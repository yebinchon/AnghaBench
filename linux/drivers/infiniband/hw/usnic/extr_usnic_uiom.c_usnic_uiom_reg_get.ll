; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_uiom.c_usnic_uiom_reg_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_uiom.c_usnic_uiom_reg_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usnic_uiom_reg = type { i64, i32, i64, i32, i32, i32, %struct.usnic_uiom_pd* }
%struct.usnic_uiom_pd = type { i32, i32 }

@sorted_diff_intervals = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Failed get_pages vpn [0x%lx,0x%lx] err %d\0A\00", align 1
@IOMMU_WRITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"Failed disjoint interval vpn [0x%lx,0x%lx] err %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"Failed map interval vpn [0x%lx,0x%lx] err %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"Failed insert interval vpn [0x%lx,0x%lx] err %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.usnic_uiom_reg* @usnic_uiom_reg_get(%struct.usnic_uiom_pd* %0, i64 %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.usnic_uiom_reg*, align 8
  %7 = alloca %struct.usnic_uiom_pd*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.usnic_uiom_reg*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.usnic_uiom_pd* %0, %struct.usnic_uiom_pd** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %19 = load i32, i32* @sorted_diff_intervals, align 4
  %20 = call i32 @LIST_HEAD(i32 %19)
  store i32 1, i32* %10, align 4
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* @PAGE_MASK, align 8
  %23 = and i64 %21, %22
  store i64 %23, i64* %13, align 8
  %24 = load i64, i64* %8, align 8
  %25 = load i64, i64* @PAGE_MASK, align 8
  %26 = xor i64 %25, -1
  %27 = and i64 %24, %26
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %17, align 4
  %29 = load i64, i64* %9, align 8
  %30 = load i32, i32* %17, align 4
  %31 = sext i32 %30 to i64
  %32 = add i64 %29, %31
  %33 = call i64 @PAGE_ALIGN(i64 %32)
  %34 = load i64, i64* @PAGE_SHIFT, align 8
  %35 = lshr i64 %33, %34
  store i64 %35, i64* %16, align 8
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* @PAGE_MASK, align 8
  %38 = and i64 %36, %37
  %39 = load i64, i64* @PAGE_SHIFT, align 8
  %40 = lshr i64 %38, %39
  store i64 %40, i64* %14, align 8
  %41 = load i64, i64* %14, align 8
  %42 = load i64, i64* %16, align 8
  %43 = add i64 %41, %42
  %44 = sub i64 %43, 1
  store i64 %44, i64* %15, align 8
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call %struct.usnic_uiom_reg* @kmalloc(i32 48, i32 %45)
  store %struct.usnic_uiom_reg* %46, %struct.usnic_uiom_reg** %12, align 8
  %47 = load %struct.usnic_uiom_reg*, %struct.usnic_uiom_reg** %12, align 8
  %48 = icmp ne %struct.usnic_uiom_reg* %47, null
  br i1 %48, label %53, label %49

49:                                               ; preds = %5
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  %52 = call %struct.usnic_uiom_reg* @ERR_PTR(i32 %51)
  store %struct.usnic_uiom_reg* %52, %struct.usnic_uiom_reg** %6, align 8
  br label %163

53:                                               ; preds = %5
  %54 = load i64, i64* %13, align 8
  %55 = load %struct.usnic_uiom_reg*, %struct.usnic_uiom_reg** %12, align 8
  %56 = getelementptr inbounds %struct.usnic_uiom_reg, %struct.usnic_uiom_reg* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  %57 = load i32, i32* %17, align 4
  %58 = load %struct.usnic_uiom_reg*, %struct.usnic_uiom_reg** %12, align 8
  %59 = getelementptr inbounds %struct.usnic_uiom_reg, %struct.usnic_uiom_reg* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 8
  %60 = load i64, i64* %9, align 8
  %61 = load %struct.usnic_uiom_reg*, %struct.usnic_uiom_reg** %12, align 8
  %62 = getelementptr inbounds %struct.usnic_uiom_reg, %struct.usnic_uiom_reg* %61, i32 0, i32 2
  store i64 %60, i64* %62, align 8
  %63 = load i32, i32* %10, align 4
  %64 = load %struct.usnic_uiom_reg*, %struct.usnic_uiom_reg** %12, align 8
  %65 = getelementptr inbounds %struct.usnic_uiom_reg, %struct.usnic_uiom_reg* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 8
  %66 = load %struct.usnic_uiom_pd*, %struct.usnic_uiom_pd** %7, align 8
  %67 = load %struct.usnic_uiom_reg*, %struct.usnic_uiom_reg** %12, align 8
  %68 = getelementptr inbounds %struct.usnic_uiom_reg, %struct.usnic_uiom_reg* %67, i32 0, i32 6
  store %struct.usnic_uiom_pd* %66, %struct.usnic_uiom_pd** %68, align 8
  %69 = load i64, i64* %8, align 8
  %70 = load i64, i64* %9, align 8
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %11, align 4
  %73 = load %struct.usnic_uiom_reg*, %struct.usnic_uiom_reg** %12, align 8
  %74 = call i32 @usnic_uiom_get_pages(i64 %69, i64 %70, i32 %71, i32 %72, %struct.usnic_uiom_reg* %73)
  store i32 %74, i32* %18, align 4
  %75 = load i32, i32* %18, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %53
  %78 = load i64, i64* %14, align 8
  %79 = load i64, i64* %15, align 8
  %80 = load i32, i32* %18, align 4
  %81 = call i32 @usnic_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i64 %78, i64 %79, i32 %80)
  br label %158

82:                                               ; preds = %53
  %83 = load %struct.usnic_uiom_pd*, %struct.usnic_uiom_pd** %7, align 8
  %84 = getelementptr inbounds %struct.usnic_uiom_pd, %struct.usnic_uiom_pd* %83, i32 0, i32 0
  %85 = call i32 @spin_lock(i32* %84)
  %86 = load i64, i64* %14, align 8
  %87 = load i64, i64* %15, align 8
  %88 = load i32, i32* %10, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %82
  %91 = load i32, i32* @IOMMU_WRITE, align 4
  br label %93

92:                                               ; preds = %82
  br label %93

93:                                               ; preds = %92, %90
  %94 = phi i32 [ %91, %90 ], [ 0, %92 ]
  %95 = load i32, i32* @IOMMU_WRITE, align 4
  %96 = load %struct.usnic_uiom_pd*, %struct.usnic_uiom_pd** %7, align 8
  %97 = getelementptr inbounds %struct.usnic_uiom_pd, %struct.usnic_uiom_pd* %96, i32 0, i32 1
  %98 = call i32 @usnic_uiom_get_intervals_diff(i64 %86, i64 %87, i32 %94, i32 %95, i32* %97, i32* @sorted_diff_intervals)
  store i32 %98, i32* %18, align 4
  %99 = load i32, i32* %18, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %93
  %102 = load i64, i64* %14, align 8
  %103 = load i64, i64* %15, align 8
  %104 = load i32, i32* %18, align 4
  %105 = call i32 @usnic_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i64 %102, i64 %103, i32 %104)
  br label %147

106:                                              ; preds = %93
  %107 = load %struct.usnic_uiom_reg*, %struct.usnic_uiom_reg** %12, align 8
  %108 = call i32 @usnic_uiom_map_sorted_intervals(i32* @sorted_diff_intervals, %struct.usnic_uiom_reg* %107)
  store i32 %108, i32* %18, align 4
  %109 = load i32, i32* %18, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %106
  %112 = load i64, i64* %14, align 8
  %113 = load i64, i64* %15, align 8
  %114 = load i32, i32* %18, align 4
  %115 = call i32 @usnic_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i64 %112, i64 %113, i32 %114)
  br label %145

116:                                              ; preds = %106
  %117 = load %struct.usnic_uiom_pd*, %struct.usnic_uiom_pd** %7, align 8
  %118 = getelementptr inbounds %struct.usnic_uiom_pd, %struct.usnic_uiom_pd* %117, i32 0, i32 1
  %119 = load i64, i64* %14, align 8
  %120 = load i64, i64* %15, align 8
  %121 = load i32, i32* %10, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %116
  %124 = load i32, i32* @IOMMU_WRITE, align 4
  br label %126

125:                                              ; preds = %116
  br label %126

126:                                              ; preds = %125, %123
  %127 = phi i32 [ %124, %123 ], [ 0, %125 ]
  %128 = call i32 @usnic_uiom_insert_interval(i32* %118, i64 %119, i64 %120, i32 %127)
  store i32 %128, i32* %18, align 4
  %129 = load i32, i32* %18, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %126
  %132 = load i64, i64* %14, align 8
  %133 = load i64, i64* %15, align 8
  %134 = load i32, i32* %18, align 4
  %135 = call i32 @usnic_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i64 %132, i64 %133, i32 %134)
  br label %142

136:                                              ; preds = %126
  %137 = call i32 @usnic_uiom_put_interval_set(i32* @sorted_diff_intervals)
  %138 = load %struct.usnic_uiom_pd*, %struct.usnic_uiom_pd** %7, align 8
  %139 = getelementptr inbounds %struct.usnic_uiom_pd, %struct.usnic_uiom_pd* %138, i32 0, i32 0
  %140 = call i32 @spin_unlock(i32* %139)
  %141 = load %struct.usnic_uiom_reg*, %struct.usnic_uiom_reg** %12, align 8
  store %struct.usnic_uiom_reg* %141, %struct.usnic_uiom_reg** %6, align 8
  br label %163

142:                                              ; preds = %131
  %143 = load %struct.usnic_uiom_pd*, %struct.usnic_uiom_pd** %7, align 8
  %144 = call i32 @usnic_uiom_unmap_sorted_intervals(i32* @sorted_diff_intervals, %struct.usnic_uiom_pd* %143)
  br label %145

145:                                              ; preds = %142, %111
  %146 = call i32 @usnic_uiom_put_interval_set(i32* @sorted_diff_intervals)
  br label %147

147:                                              ; preds = %145, %101
  %148 = load %struct.usnic_uiom_reg*, %struct.usnic_uiom_reg** %12, align 8
  %149 = getelementptr inbounds %struct.usnic_uiom_reg, %struct.usnic_uiom_reg* %148, i32 0, i32 5
  %150 = call i32 @usnic_uiom_put_pages(i32* %149, i32 0)
  %151 = load %struct.usnic_uiom_pd*, %struct.usnic_uiom_pd** %7, align 8
  %152 = getelementptr inbounds %struct.usnic_uiom_pd, %struct.usnic_uiom_pd* %151, i32 0, i32 0
  %153 = call i32 @spin_unlock(i32* %152)
  %154 = load %struct.usnic_uiom_reg*, %struct.usnic_uiom_reg** %12, align 8
  %155 = getelementptr inbounds %struct.usnic_uiom_reg, %struct.usnic_uiom_reg* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @mmdrop(i32 %156)
  br label %158

158:                                              ; preds = %147, %77
  %159 = load %struct.usnic_uiom_reg*, %struct.usnic_uiom_reg** %12, align 8
  %160 = call i32 @kfree(%struct.usnic_uiom_reg* %159)
  %161 = load i32, i32* %18, align 4
  %162 = call %struct.usnic_uiom_reg* @ERR_PTR(i32 %161)
  store %struct.usnic_uiom_reg* %162, %struct.usnic_uiom_reg** %6, align 8
  br label %163

163:                                              ; preds = %158, %136, %49
  %164 = load %struct.usnic_uiom_reg*, %struct.usnic_uiom_reg** %6, align 8
  ret %struct.usnic_uiom_reg* %164
}

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local %struct.usnic_uiom_reg* @kmalloc(i32, i32) #1

declare dso_local %struct.usnic_uiom_reg* @ERR_PTR(i32) #1

declare dso_local i32 @usnic_uiom_get_pages(i64, i64, i32, i32, %struct.usnic_uiom_reg*) #1

declare dso_local i32 @usnic_err(i8*, i64, i64, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @usnic_uiom_get_intervals_diff(i64, i64, i32, i32, i32*, i32*) #1

declare dso_local i32 @usnic_uiom_map_sorted_intervals(i32*, %struct.usnic_uiom_reg*) #1

declare dso_local i32 @usnic_uiom_insert_interval(i32*, i64, i64, i32) #1

declare dso_local i32 @usnic_uiom_put_interval_set(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @usnic_uiom_unmap_sorted_intervals(i32*, %struct.usnic_uiom_pd*) #1

declare dso_local i32 @usnic_uiom_put_pages(i32*, i32) #1

declare dso_local i32 @mmdrop(i32) #1

declare dso_local i32 @kfree(%struct.usnic_uiom_reg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
