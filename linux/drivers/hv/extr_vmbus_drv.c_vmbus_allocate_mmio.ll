; ModuleID = '/home/carl/AnghaBench/linux/drivers/hv/extr_vmbus_drv.c_vmbus_allocate_mmio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hv/extr_vmbus_drv.c_vmbus_allocate_mmio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }
%struct.resource = type { i64, i64, i8*, %struct.resource* }
%struct.hv_device = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@hyperv_mmio_lock = common dso_local global i32 0, align 4
@fb_mmio = common dso_local global %struct.TYPE_2__* null, align 8
@hyperv_mmio = common dso_local global %struct.resource* null, align 8
@IORESOURCE_BUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmbus_allocate_mmio(%struct.resource** %0, %struct.hv_device* %1, i64 %2, i64 %3, i64 %4, i64 %5, i32 %6) #0 {
  %8 = alloca %struct.resource**, align 8
  %9 = alloca %struct.hv_device*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.resource*, align 8
  %16 = alloca %struct.resource*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  store %struct.resource** %0, %struct.resource*** %8, align 8
  store %struct.hv_device* %1, %struct.hv_device** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  store i32 %6, i32* %14, align 4
  %22 = load %struct.hv_device*, %struct.hv_device** %9, align 8
  %23 = getelementptr inbounds %struct.hv_device, %struct.hv_device* %22, i32 0, i32 0
  %24 = call i8* @dev_name(i32* %23)
  store i8* %24, i8** %20, align 8
  %25 = load i32, i32* @ENXIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %21, align 4
  %27 = call i32 @down(i32* @hyperv_mmio_lock)
  %28 = load i32, i32* %14, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %83

30:                                               ; preds = %7
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fb_mmio, align 8
  %32 = icmp ne %struct.TYPE_2__* %31, null
  br i1 %32, label %33, label %83

33:                                               ; preds = %30
  %34 = load i64, i64* %10, align 8
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fb_mmio, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp sgt i64 %34, %37
  br i1 %38, label %83, label %39

39:                                               ; preds = %33
  %40 = load i64, i64* %11, align 8
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fb_mmio, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp slt i64 %40, %43
  br i1 %44, label %83, label %45

45:                                               ; preds = %39
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fb_mmio, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %17, align 8
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @fb_mmio, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %18, align 8
  %52 = load i64, i64* %17, align 8
  %53 = load i64, i64* %13, align 8
  %54 = add nsw i64 %52, %53
  %55 = sub nsw i64 %54, 1
  %56 = load i64, i64* %13, align 8
  %57 = sub nsw i64 %56, 1
  %58 = xor i64 %57, -1
  %59 = and i64 %55, %58
  store i64 %59, i64* %19, align 8
  br label %60

60:                                               ; preds = %78, %45
  %61 = load i64, i64* %19, align 8
  %62 = load i64, i64* %12, align 8
  %63 = add nsw i64 %61, %62
  %64 = sub nsw i64 %63, 1
  %65 = load i64, i64* %18, align 8
  %66 = icmp sle i64 %64, %65
  br i1 %66, label %67, label %82

67:                                               ; preds = %60
  %68 = load i64, i64* %19, align 8
  %69 = load i64, i64* %12, align 8
  %70 = load i8*, i8** %20, align 8
  %71 = call %struct.resource* @request_mem_region_exclusive(i64 %68, i64 %69, i8* %70)
  %72 = load %struct.resource**, %struct.resource*** %8, align 8
  store %struct.resource* %71, %struct.resource** %72, align 8
  %73 = load %struct.resource**, %struct.resource*** %8, align 8
  %74 = load %struct.resource*, %struct.resource** %73, align 8
  %75 = icmp ne %struct.resource* %74, null
  br i1 %75, label %76, label %77

76:                                               ; preds = %67
  store i32 0, i32* %21, align 4
  br label %162

77:                                               ; preds = %67
  br label %78

78:                                               ; preds = %77
  %79 = load i64, i64* %13, align 8
  %80 = load i64, i64* %19, align 8
  %81 = add nsw i64 %80, %79
  store i64 %81, i64* %19, align 8
  br label %60

82:                                               ; preds = %60
  br label %83

83:                                               ; preds = %82, %39, %33, %30, %7
  %84 = load %struct.resource*, %struct.resource** @hyperv_mmio, align 8
  store %struct.resource* %84, %struct.resource** %15, align 8
  br label %85

85:                                               ; preds = %157, %83
  %86 = load %struct.resource*, %struct.resource** %15, align 8
  %87 = icmp ne %struct.resource* %86, null
  br i1 %87, label %88, label %161

88:                                               ; preds = %85
  %89 = load %struct.resource*, %struct.resource** %15, align 8
  %90 = getelementptr inbounds %struct.resource, %struct.resource* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* %11, align 8
  %93 = icmp sge i64 %91, %92
  br i1 %93, label %100, label %94

94:                                               ; preds = %88
  %95 = load %struct.resource*, %struct.resource** %15, align 8
  %96 = getelementptr inbounds %struct.resource, %struct.resource* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* %10, align 8
  %99 = icmp sle i64 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %94, %88
  br label %157

101:                                              ; preds = %94
  %102 = load %struct.resource*, %struct.resource** %15, align 8
  %103 = getelementptr inbounds %struct.resource, %struct.resource* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  store i64 %104, i64* %17, align 8
  %105 = load %struct.resource*, %struct.resource** %15, align 8
  %106 = getelementptr inbounds %struct.resource, %struct.resource* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  store i64 %107, i64* %18, align 8
  %108 = load i64, i64* %17, align 8
  %109 = load i64, i64* %13, align 8
  %110 = add nsw i64 %108, %109
  %111 = sub nsw i64 %110, 1
  %112 = load i64, i64* %13, align 8
  %113 = sub nsw i64 %112, 1
  %114 = xor i64 %113, -1
  %115 = and i64 %111, %114
  store i64 %115, i64* %19, align 8
  br label %116

116:                                              ; preds = %152, %101
  %117 = load i64, i64* %19, align 8
  %118 = load i64, i64* %12, align 8
  %119 = add nsw i64 %117, %118
  %120 = sub nsw i64 %119, 1
  %121 = load i64, i64* %18, align 8
  %122 = icmp sle i64 %120, %121
  br i1 %122, label %123, label %156

123:                                              ; preds = %116
  %124 = load %struct.resource*, %struct.resource** %15, align 8
  %125 = load i64, i64* %19, align 8
  %126 = load i64, i64* %12, align 8
  %127 = load i32, i32* @IORESOURCE_BUSY, align 4
  %128 = call %struct.resource* @__request_region(%struct.resource* %124, i64 %125, i64 %126, i32* null, i32 %127)
  store %struct.resource* %128, %struct.resource** %16, align 8
  %129 = load %struct.resource*, %struct.resource** %16, align 8
  %130 = icmp ne %struct.resource* %129, null
  br i1 %130, label %132, label %131

131:                                              ; preds = %123
  br label %152

132:                                              ; preds = %123
  %133 = load i64, i64* %19, align 8
  %134 = load i64, i64* %12, align 8
  %135 = load i8*, i8** %20, align 8
  %136 = call %struct.resource* @request_mem_region_exclusive(i64 %133, i64 %134, i8* %135)
  %137 = load %struct.resource**, %struct.resource*** %8, align 8
  store %struct.resource* %136, %struct.resource** %137, align 8
  %138 = load %struct.resource**, %struct.resource*** %8, align 8
  %139 = load %struct.resource*, %struct.resource** %138, align 8
  %140 = icmp ne %struct.resource* %139, null
  br i1 %140, label %141, label %147

141:                                              ; preds = %132
  %142 = load %struct.resource**, %struct.resource*** %8, align 8
  %143 = load %struct.resource*, %struct.resource** %142, align 8
  %144 = bitcast %struct.resource* %143 to i8*
  %145 = load %struct.resource*, %struct.resource** %16, align 8
  %146 = getelementptr inbounds %struct.resource, %struct.resource* %145, i32 0, i32 2
  store i8* %144, i8** %146, align 8
  store i32 0, i32* %21, align 4
  br label %162

147:                                              ; preds = %132
  %148 = load %struct.resource*, %struct.resource** %15, align 8
  %149 = load i64, i64* %19, align 8
  %150 = load i64, i64* %12, align 8
  %151 = call i32 @__release_region(%struct.resource* %148, i64 %149, i64 %150)
  br label %152

152:                                              ; preds = %147, %131
  %153 = load i64, i64* %13, align 8
  %154 = load i64, i64* %19, align 8
  %155 = add nsw i64 %154, %153
  store i64 %155, i64* %19, align 8
  br label %116

156:                                              ; preds = %116
  br label %157

157:                                              ; preds = %156, %100
  %158 = load %struct.resource*, %struct.resource** %15, align 8
  %159 = getelementptr inbounds %struct.resource, %struct.resource* %158, i32 0, i32 3
  %160 = load %struct.resource*, %struct.resource** %159, align 8
  store %struct.resource* %160, %struct.resource** %15, align 8
  br label %85

161:                                              ; preds = %85
  br label %162

162:                                              ; preds = %161, %141, %76
  %163 = call i32 @up(i32* @hyperv_mmio_lock)
  %164 = load i32, i32* %21, align 4
  ret i32 %164
}

declare dso_local i8* @dev_name(i32*) #1

declare dso_local i32 @down(i32*) #1

declare dso_local %struct.resource* @request_mem_region_exclusive(i64, i64, i8*) #1

declare dso_local %struct.resource* @__request_region(%struct.resource*, i64, i64, i32*, i32) #1

declare dso_local i32 @__release_region(%struct.resource*, i64, i64) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
