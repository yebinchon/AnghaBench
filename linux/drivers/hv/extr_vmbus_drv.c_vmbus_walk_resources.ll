; ModuleID = '/home/carl/AnghaBench/linux/drivers/hv/extr_vmbus_drv.c_vmbus_walk_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hv/extr_vmbus_drv.c_vmbus_walk_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i8*, i32, i32, %struct.resource*, i32 }
%struct.acpi_resource = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@hyperv_mmio = common dso_local global %struct.resource* null, align 8
@AE_OK = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@VTPM_BASE_ADDRESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"hyperv mmio\00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_resource*, i8*)* @vmbus_walk_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmbus_walk_resources(%struct.acpi_resource* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_resource*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.resource*, align 8
  %9 = alloca %struct.resource**, align 8
  %10 = alloca %struct.resource**, align 8
  store %struct.acpi_resource* %0, %struct.acpi_resource** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store %struct.resource** @hyperv_mmio, %struct.resource*** %9, align 8
  store %struct.resource** null, %struct.resource*** %10, align 8
  %11 = load %struct.acpi_resource*, %struct.acpi_resource** %4, align 8
  %12 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %40 [
    i32 129, label %14
    i32 128, label %27
  ]

14:                                               ; preds = %2
  %15 = load %struct.acpi_resource*, %struct.acpi_resource** %4, align 8
  %16 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %6, align 4
  %21 = load %struct.acpi_resource*, %struct.acpi_resource** %4, align 8
  %22 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %7, align 4
  br label %42

27:                                               ; preds = %2
  %28 = load %struct.acpi_resource*, %struct.acpi_resource** %4, align 8
  %29 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %6, align 4
  %34 = load %struct.acpi_resource*, %struct.acpi_resource** %4, align 8
  %35 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %7, align 4
  br label %42

40:                                               ; preds = %2
  %41 = load i32, i32* @AE_OK, align 4
  store i32 %41, i32* %3, align 4
  br label %153

42:                                               ; preds = %27, %14
  %43 = load i32, i32* %7, align 4
  %44 = icmp slt i32 %43, 1048576
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = load i32, i32* @AE_OK, align 4
  store i32 %46, i32* %3, align 4
  br label %153

47:                                               ; preds = %42
  %48 = load i32, i32* @GFP_ATOMIC, align 4
  %49 = call %struct.resource* @kzalloc(i32 32, i32 %48)
  store %struct.resource* %49, %struct.resource** %8, align 8
  %50 = load %struct.resource*, %struct.resource** %8, align 8
  %51 = icmp ne %struct.resource* %50, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %47
  %53 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %53, i32* %3, align 4
  br label %153

54:                                               ; preds = %47
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @VTPM_BASE_ADDRESS, align 4
  %57 = icmp sgt i32 %55, %56
  br i1 %57, label %58, label %64

58:                                               ; preds = %54
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @VTPM_BASE_ADDRESS, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = load i32, i32* @VTPM_BASE_ADDRESS, align 4
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %62, %58, %54
  %65 = load %struct.resource*, %struct.resource** %8, align 8
  %66 = getelementptr inbounds %struct.resource, %struct.resource* %65, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %66, align 8
  %67 = load i32, i32* @IORESOURCE_MEM, align 4
  %68 = load %struct.resource*, %struct.resource** %8, align 8
  %69 = getelementptr inbounds %struct.resource, %struct.resource* %68, i32 0, i32 4
  store i32 %67, i32* %69, align 8
  %70 = load i32, i32* %6, align 4
  %71 = load %struct.resource*, %struct.resource** %8, align 8
  %72 = getelementptr inbounds %struct.resource, %struct.resource* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 8
  %73 = load i32, i32* %7, align 4
  %74 = load %struct.resource*, %struct.resource** %8, align 8
  %75 = getelementptr inbounds %struct.resource, %struct.resource* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 4
  br label %76

76:                                               ; preds = %150, %64
  %77 = load %struct.resource**, %struct.resource*** %9, align 8
  %78 = load %struct.resource*, %struct.resource** %77, align 8
  %79 = icmp ne %struct.resource* %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %76
  %81 = load %struct.resource*, %struct.resource** %8, align 8
  %82 = load %struct.resource**, %struct.resource*** %9, align 8
  store %struct.resource* %81, %struct.resource** %82, align 8
  br label %151

83:                                               ; preds = %76
  %84 = load %struct.resource**, %struct.resource*** %9, align 8
  %85 = load %struct.resource*, %struct.resource** %84, align 8
  %86 = getelementptr inbounds %struct.resource, %struct.resource* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, 1
  %89 = load %struct.resource*, %struct.resource** %8, align 8
  %90 = getelementptr inbounds %struct.resource, %struct.resource* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = icmp eq i32 %88, %91
  br i1 %92, label %93, label %102

93:                                               ; preds = %83
  %94 = load %struct.resource*, %struct.resource** %8, align 8
  %95 = getelementptr inbounds %struct.resource, %struct.resource* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.resource**, %struct.resource*** %9, align 8
  %98 = load %struct.resource*, %struct.resource** %97, align 8
  %99 = getelementptr inbounds %struct.resource, %struct.resource* %98, i32 0, i32 2
  store i32 %96, i32* %99, align 4
  %100 = load %struct.resource*, %struct.resource** %8, align 8
  %101 = call i32 @kfree(%struct.resource* %100)
  br label %151

102:                                              ; preds = %83
  %103 = load %struct.resource**, %struct.resource*** %9, align 8
  %104 = load %struct.resource*, %struct.resource** %103, align 8
  %105 = getelementptr inbounds %struct.resource, %struct.resource* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.resource*, %struct.resource** %8, align 8
  %108 = getelementptr inbounds %struct.resource, %struct.resource* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %109, 1
  %111 = icmp eq i32 %106, %110
  br i1 %111, label %112, label %121

112:                                              ; preds = %102
  %113 = load %struct.resource*, %struct.resource** %8, align 8
  %114 = getelementptr inbounds %struct.resource, %struct.resource* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.resource**, %struct.resource*** %9, align 8
  %117 = load %struct.resource*, %struct.resource** %116, align 8
  %118 = getelementptr inbounds %struct.resource, %struct.resource* %117, i32 0, i32 1
  store i32 %115, i32* %118, align 8
  %119 = load %struct.resource*, %struct.resource** %8, align 8
  %120 = call i32 @kfree(%struct.resource* %119)
  br label %151

121:                                              ; preds = %102
  %122 = load %struct.resource**, %struct.resource*** %9, align 8
  %123 = load %struct.resource*, %struct.resource** %122, align 8
  %124 = getelementptr inbounds %struct.resource, %struct.resource* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.resource*, %struct.resource** %8, align 8
  %127 = getelementptr inbounds %struct.resource, %struct.resource* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = icmp sgt i32 %125, %128
  br i1 %129, label %130, label %145

130:                                              ; preds = %121
  %131 = load %struct.resource**, %struct.resource*** %9, align 8
  %132 = load %struct.resource*, %struct.resource** %131, align 8
  %133 = load %struct.resource*, %struct.resource** %8, align 8
  %134 = getelementptr inbounds %struct.resource, %struct.resource* %133, i32 0, i32 3
  store %struct.resource* %132, %struct.resource** %134, align 8
  %135 = load %struct.resource**, %struct.resource*** %10, align 8
  %136 = icmp ne %struct.resource** %135, null
  br i1 %136, label %137, label %142

137:                                              ; preds = %130
  %138 = load %struct.resource*, %struct.resource** %8, align 8
  %139 = load %struct.resource**, %struct.resource*** %10, align 8
  %140 = load %struct.resource*, %struct.resource** %139, align 8
  %141 = getelementptr inbounds %struct.resource, %struct.resource* %140, i32 0, i32 3
  store %struct.resource* %138, %struct.resource** %141, align 8
  br label %142

142:                                              ; preds = %137, %130
  %143 = load %struct.resource*, %struct.resource** %8, align 8
  %144 = load %struct.resource**, %struct.resource*** %9, align 8
  store %struct.resource* %143, %struct.resource** %144, align 8
  br label %151

145:                                              ; preds = %121
  %146 = load %struct.resource**, %struct.resource*** %9, align 8
  store %struct.resource** %146, %struct.resource*** %10, align 8
  %147 = load %struct.resource**, %struct.resource*** %9, align 8
  %148 = load %struct.resource*, %struct.resource** %147, align 8
  %149 = getelementptr inbounds %struct.resource, %struct.resource* %148, i32 0, i32 3
  store %struct.resource** %149, %struct.resource*** %9, align 8
  br label %150

150:                                              ; preds = %145
  br i1 true, label %76, label %151

151:                                              ; preds = %150, %142, %112, %93, %80
  %152 = load i32, i32* @AE_OK, align 4
  store i32 %152, i32* %3, align 4
  br label %153

153:                                              ; preds = %151, %52, %45, %40
  %154 = load i32, i32* %3, align 4
  ret i32 %154
}

declare dso_local %struct.resource* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
