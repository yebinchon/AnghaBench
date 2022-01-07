; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_iommu.c_iommu_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_iommu.c_iommu_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_domain = type { i64, i32, %struct.iommu_ops* }
%struct.iommu_ops = type { i32 (%struct.iommu_domain.0*, i64, i64, i64, i32)*, i32 (%struct.iommu_domain.1*)* }
%struct.iommu_domain.0 = type opaque
%struct.iommu_domain.1 = type opaque

@ENODEV = common dso_local global i32 0, align 4
@__IOMMU_DOMAIN_PAGING = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"unaligned: iova 0x%lx pa %pa size 0x%zx min_pagesz 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"map: iova 0x%lx pa %pa size 0x%zx\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"mapping: iova 0x%lx pa %pa pgsize 0x%zx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iommu_map(%struct.iommu_domain* %0, i64 %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iommu_domain*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.iommu_ops*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store %struct.iommu_domain* %0, %struct.iommu_domain** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %19 = load %struct.iommu_domain*, %struct.iommu_domain** %7, align 8
  %20 = getelementptr inbounds %struct.iommu_domain, %struct.iommu_domain* %19, i32 0, i32 2
  %21 = load %struct.iommu_ops*, %struct.iommu_ops** %20, align 8
  store %struct.iommu_ops* %21, %struct.iommu_ops** %12, align 8
  %22 = load i64, i64* %8, align 8
  store i64 %22, i64* %13, align 8
  %23 = load i64, i64* %10, align 8
  store i64 %23, i64* %15, align 8
  %24 = load i64, i64* %9, align 8
  store i64 %24, i64* %16, align 8
  store i32 0, i32* %17, align 4
  %25 = load %struct.iommu_ops*, %struct.iommu_ops** %12, align 8
  %26 = getelementptr inbounds %struct.iommu_ops, %struct.iommu_ops* %25, i32 0, i32 0
  %27 = load i32 (%struct.iommu_domain.0*, i64, i64, i64, i32)*, i32 (%struct.iommu_domain.0*, i64, i64, i64, i32)** %26, align 8
  %28 = icmp eq i32 (%struct.iommu_domain.0*, i64, i64, i64, i32)* %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %5
  %30 = load %struct.iommu_domain*, %struct.iommu_domain** %7, align 8
  %31 = getelementptr inbounds %struct.iommu_domain, %struct.iommu_domain* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br label %34

34:                                               ; preds = %29, %5
  %35 = phi i1 [ true, %5 ], [ %33, %29 ]
  %36 = zext i1 %35 to i32
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32, i32* @ENODEV, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %6, align 4
  br label %146

42:                                               ; preds = %34
  %43 = load %struct.iommu_domain*, %struct.iommu_domain** %7, align 8
  %44 = getelementptr inbounds %struct.iommu_domain, %struct.iommu_domain* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @__IOMMU_DOMAIN_PAGING, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = call i64 @unlikely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %42
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %6, align 4
  br label %146

56:                                               ; preds = %42
  %57 = load %struct.iommu_domain*, %struct.iommu_domain** %7, align 8
  %58 = getelementptr inbounds %struct.iommu_domain, %struct.iommu_domain* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @__ffs(i64 %59)
  %61 = shl i32 1, %60
  store i32 %61, i32* %14, align 4
  %62 = load i64, i64* %8, align 8
  %63 = load i64, i64* %9, align 8
  %64 = or i64 %62, %63
  %65 = load i64, i64* %10, align 8
  %66 = or i64 %64, %65
  %67 = load i32, i32* %14, align 4
  %68 = call i32 @IS_ALIGNED(i64 %66, i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %77, label %70

70:                                               ; preds = %56
  %71 = load i64, i64* %8, align 8
  %72 = load i64, i64* %10, align 8
  %73 = load i32, i32* %14, align 4
  %74 = call i32 @pr_err(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i64 %71, i64* %9, i64 %72, i32 %73)
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %6, align 4
  br label %146

77:                                               ; preds = %56
  %78 = load i64, i64* %8, align 8
  %79 = load i64, i64* %10, align 8
  %80 = call i32 @pr_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %78, i64* %9, i64 %79)
  br label %81

81:                                               ; preds = %107, %77
  %82 = load i64, i64* %10, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %117

84:                                               ; preds = %81
  %85 = load %struct.iommu_domain*, %struct.iommu_domain** %7, align 8
  %86 = load i64, i64* %8, align 8
  %87 = load i64, i64* %9, align 8
  %88 = or i64 %86, %87
  %89 = load i64, i64* %10, align 8
  %90 = call i64 @iommu_pgsize(%struct.iommu_domain* %85, i64 %88, i64 %89)
  store i64 %90, i64* %18, align 8
  %91 = load i64, i64* %8, align 8
  %92 = load i64, i64* %18, align 8
  %93 = call i32 @pr_debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i64 %91, i64* %9, i64 %92)
  %94 = load %struct.iommu_ops*, %struct.iommu_ops** %12, align 8
  %95 = getelementptr inbounds %struct.iommu_ops, %struct.iommu_ops* %94, i32 0, i32 0
  %96 = load i32 (%struct.iommu_domain.0*, i64, i64, i64, i32)*, i32 (%struct.iommu_domain.0*, i64, i64, i64, i32)** %95, align 8
  %97 = load %struct.iommu_domain*, %struct.iommu_domain** %7, align 8
  %98 = bitcast %struct.iommu_domain* %97 to %struct.iommu_domain.0*
  %99 = load i64, i64* %8, align 8
  %100 = load i64, i64* %9, align 8
  %101 = load i64, i64* %18, align 8
  %102 = load i32, i32* %11, align 4
  %103 = call i32 %96(%struct.iommu_domain.0* %98, i64 %99, i64 %100, i64 %101, i32 %102)
  store i32 %103, i32* %17, align 4
  %104 = load i32, i32* %17, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %84
  br label %117

107:                                              ; preds = %84
  %108 = load i64, i64* %18, align 8
  %109 = load i64, i64* %8, align 8
  %110 = add i64 %109, %108
  store i64 %110, i64* %8, align 8
  %111 = load i64, i64* %18, align 8
  %112 = load i64, i64* %9, align 8
  %113 = add i64 %112, %111
  store i64 %113, i64* %9, align 8
  %114 = load i64, i64* %18, align 8
  %115 = load i64, i64* %10, align 8
  %116 = sub i64 %115, %114
  store i64 %116, i64* %10, align 8
  br label %81

117:                                              ; preds = %106, %81
  %118 = load %struct.iommu_ops*, %struct.iommu_ops** %12, align 8
  %119 = getelementptr inbounds %struct.iommu_ops, %struct.iommu_ops* %118, i32 0, i32 1
  %120 = load i32 (%struct.iommu_domain.1*)*, i32 (%struct.iommu_domain.1*)** %119, align 8
  %121 = icmp ne i32 (%struct.iommu_domain.1*)* %120, null
  br i1 %121, label %122, label %129

122:                                              ; preds = %117
  %123 = load %struct.iommu_ops*, %struct.iommu_ops** %12, align 8
  %124 = getelementptr inbounds %struct.iommu_ops, %struct.iommu_ops* %123, i32 0, i32 1
  %125 = load i32 (%struct.iommu_domain.1*)*, i32 (%struct.iommu_domain.1*)** %124, align 8
  %126 = load %struct.iommu_domain*, %struct.iommu_domain** %7, align 8
  %127 = bitcast %struct.iommu_domain* %126 to %struct.iommu_domain.1*
  %128 = call i32 %125(%struct.iommu_domain.1* %127)
  br label %129

129:                                              ; preds = %122, %117
  %130 = load i32, i32* %17, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %139

132:                                              ; preds = %129
  %133 = load %struct.iommu_domain*, %struct.iommu_domain** %7, align 8
  %134 = load i64, i64* %13, align 8
  %135 = load i64, i64* %15, align 8
  %136 = load i64, i64* %10, align 8
  %137 = sub i64 %135, %136
  %138 = call i32 @iommu_unmap(%struct.iommu_domain* %133, i64 %134, i64 %137)
  br label %144

139:                                              ; preds = %129
  %140 = load i64, i64* %13, align 8
  %141 = load i64, i64* %16, align 8
  %142 = load i64, i64* %15, align 8
  %143 = call i32 @trace_map(i64 %140, i64 %141, i64 %142)
  br label %144

144:                                              ; preds = %139, %132
  %145 = load i32, i32* %17, align 4
  store i32 %145, i32* %6, align 4
  br label %146

146:                                              ; preds = %144, %70, %53, %39
  %147 = load i32, i32* %6, align 4
  ret i32 %147
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @__ffs(i64) #1

declare dso_local i32 @IS_ALIGNED(i64, i32) #1

declare dso_local i32 @pr_err(i8*, i64, i64*, i64, i32) #1

declare dso_local i32 @pr_debug(i8*, i64, i64*, i64) #1

declare dso_local i64 @iommu_pgsize(%struct.iommu_domain*, i64, i64) #1

declare dso_local i32 @iommu_unmap(%struct.iommu_domain*, i64, i64) #1

declare dso_local i32 @trace_map(i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
