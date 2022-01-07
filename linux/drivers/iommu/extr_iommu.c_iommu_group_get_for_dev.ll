; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_iommu.c_iommu_group_get_for_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_iommu.c_iommu_group_get_for_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_group = type { %struct.iommu_domain*, %struct.iommu_domain* }
%struct.iommu_domain = type { i32 }
%struct.device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.iommu_ops* }
%struct.iommu_ops = type { %struct.iommu_group* (%struct.device.0*)* }
%struct.device.0 = type opaque

@EINVAL = common dso_local global i32 0, align 4
@iommu_def_domain_type = common dso_local global i64 0, align 8
@IOMMU_DOMAIN_DMA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [85 x i8] c"failed to allocate default IOMMU domain of type %u; falling back to IOMMU_DOMAIN_DMA\00", align 1
@iommu_dma_strict = common dso_local global i32 0, align 4
@DOMAIN_ATTR_DMA_USE_FLUSH_QUEUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.iommu_group* @iommu_group_get_for_dev(%struct.device* %0) #0 {
  %2 = alloca %struct.iommu_group*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.iommu_ops*, align 8
  %5 = alloca %struct.iommu_group*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.iommu_domain*, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = getelementptr inbounds %struct.device, %struct.device* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.iommu_ops*, %struct.iommu_ops** %12, align 8
  store %struct.iommu_ops* %13, %struct.iommu_ops** %4, align 8
  %14 = load %struct.device*, %struct.device** %3, align 8
  %15 = call %struct.iommu_group* @iommu_group_get(%struct.device* %14)
  store %struct.iommu_group* %15, %struct.iommu_group** %5, align 8
  %16 = load %struct.iommu_group*, %struct.iommu_group** %5, align 8
  %17 = icmp ne %struct.iommu_group* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load %struct.iommu_group*, %struct.iommu_group** %5, align 8
  store %struct.iommu_group* %19, %struct.iommu_group** %2, align 8
  br label %115

20:                                               ; preds = %1
  %21 = load %struct.iommu_ops*, %struct.iommu_ops** %4, align 8
  %22 = icmp ne %struct.iommu_ops* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  %26 = call %struct.iommu_group* @ERR_PTR(i32 %25)
  store %struct.iommu_group* %26, %struct.iommu_group** %2, align 8
  br label %115

27:                                               ; preds = %20
  %28 = load %struct.iommu_ops*, %struct.iommu_ops** %4, align 8
  %29 = getelementptr inbounds %struct.iommu_ops, %struct.iommu_ops* %28, i32 0, i32 0
  %30 = load %struct.iommu_group* (%struct.device.0*)*, %struct.iommu_group* (%struct.device.0*)** %29, align 8
  %31 = load %struct.device*, %struct.device** %3, align 8
  %32 = bitcast %struct.device* %31 to %struct.device.0*
  %33 = call %struct.iommu_group* %30(%struct.device.0* %32)
  store %struct.iommu_group* %33, %struct.iommu_group** %5, align 8
  %34 = load %struct.iommu_group*, %struct.iommu_group** %5, align 8
  %35 = icmp eq %struct.iommu_group* %34, null
  %36 = zext i1 %35 to i32
  %37 = call i64 @WARN_ON_ONCE(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %27
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  %42 = call %struct.iommu_group* @ERR_PTR(i32 %41)
  store %struct.iommu_group* %42, %struct.iommu_group** %2, align 8
  br label %115

43:                                               ; preds = %27
  %44 = load %struct.iommu_group*, %struct.iommu_group** %5, align 8
  %45 = call i64 @IS_ERR(%struct.iommu_group* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load %struct.iommu_group*, %struct.iommu_group** %5, align 8
  store %struct.iommu_group* %48, %struct.iommu_group** %2, align 8
  br label %115

49:                                               ; preds = %43
  %50 = load %struct.iommu_group*, %struct.iommu_group** %5, align 8
  %51 = getelementptr inbounds %struct.iommu_group, %struct.iommu_group* %50, i32 0, i32 1
  %52 = load %struct.iommu_domain*, %struct.iommu_domain** %51, align 8
  %53 = icmp ne %struct.iommu_domain* %52, null
  br i1 %53, label %102, label %54

54:                                               ; preds = %49
  %55 = load %struct.device*, %struct.device** %3, align 8
  %56 = getelementptr inbounds %struct.device, %struct.device* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = load i64, i64* @iommu_def_domain_type, align 8
  %59 = call %struct.iommu_domain* @__iommu_domain_alloc(%struct.TYPE_2__* %57, i64 %58)
  store %struct.iommu_domain* %59, %struct.iommu_domain** %7, align 8
  %60 = load %struct.iommu_domain*, %struct.iommu_domain** %7, align 8
  %61 = icmp ne %struct.iommu_domain* %60, null
  br i1 %61, label %79, label %62

62:                                               ; preds = %54
  %63 = load i64, i64* @iommu_def_domain_type, align 8
  %64 = load i64, i64* @IOMMU_DOMAIN_DMA, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %79

66:                                               ; preds = %62
  %67 = load %struct.device*, %struct.device** %3, align 8
  %68 = getelementptr inbounds %struct.device, %struct.device* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = load i64, i64* @IOMMU_DOMAIN_DMA, align 8
  %71 = call %struct.iommu_domain* @__iommu_domain_alloc(%struct.TYPE_2__* %69, i64 %70)
  store %struct.iommu_domain* %71, %struct.iommu_domain** %7, align 8
  %72 = load %struct.iommu_domain*, %struct.iommu_domain** %7, align 8
  %73 = icmp ne %struct.iommu_domain* %72, null
  br i1 %73, label %74, label %78

74:                                               ; preds = %66
  %75 = load %struct.device*, %struct.device** %3, align 8
  %76 = load i64, i64* @iommu_def_domain_type, align 8
  %77 = call i32 @dev_warn(%struct.device* %75, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i64 0, i64 0), i64 %76)
  br label %78

78:                                               ; preds = %74, %66
  br label %79

79:                                               ; preds = %78, %62, %54
  %80 = load %struct.iommu_domain*, %struct.iommu_domain** %7, align 8
  %81 = load %struct.iommu_group*, %struct.iommu_group** %5, align 8
  %82 = getelementptr inbounds %struct.iommu_group, %struct.iommu_group* %81, i32 0, i32 1
  store %struct.iommu_domain* %80, %struct.iommu_domain** %82, align 8
  %83 = load %struct.iommu_group*, %struct.iommu_group** %5, align 8
  %84 = getelementptr inbounds %struct.iommu_group, %struct.iommu_group* %83, i32 0, i32 0
  %85 = load %struct.iommu_domain*, %struct.iommu_domain** %84, align 8
  %86 = icmp ne %struct.iommu_domain* %85, null
  br i1 %86, label %91, label %87

87:                                               ; preds = %79
  %88 = load %struct.iommu_domain*, %struct.iommu_domain** %7, align 8
  %89 = load %struct.iommu_group*, %struct.iommu_group** %5, align 8
  %90 = getelementptr inbounds %struct.iommu_group, %struct.iommu_group* %89, i32 0, i32 0
  store %struct.iommu_domain* %88, %struct.iommu_domain** %90, align 8
  br label %91

91:                                               ; preds = %87, %79
  %92 = load %struct.iommu_domain*, %struct.iommu_domain** %7, align 8
  %93 = icmp ne %struct.iommu_domain* %92, null
  br i1 %93, label %94, label %101

94:                                               ; preds = %91
  %95 = load i32, i32* @iommu_dma_strict, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %94
  store i32 1, i32* %8, align 4
  %98 = load %struct.iommu_domain*, %struct.iommu_domain** %7, align 8
  %99 = load i32, i32* @DOMAIN_ATTR_DMA_USE_FLUSH_QUEUE, align 4
  %100 = call i32 @iommu_domain_set_attr(%struct.iommu_domain* %98, i32 %99, i32* %8)
  br label %101

101:                                              ; preds = %97, %94, %91
  br label %102

102:                                              ; preds = %101, %49
  %103 = load %struct.iommu_group*, %struct.iommu_group** %5, align 8
  %104 = load %struct.device*, %struct.device** %3, align 8
  %105 = call i32 @iommu_group_add_device(%struct.iommu_group* %103, %struct.device* %104)
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %6, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %102
  %109 = load %struct.iommu_group*, %struct.iommu_group** %5, align 8
  %110 = call i32 @iommu_group_put(%struct.iommu_group* %109)
  %111 = load i32, i32* %6, align 4
  %112 = call %struct.iommu_group* @ERR_PTR(i32 %111)
  store %struct.iommu_group* %112, %struct.iommu_group** %2, align 8
  br label %115

113:                                              ; preds = %102
  %114 = load %struct.iommu_group*, %struct.iommu_group** %5, align 8
  store %struct.iommu_group* %114, %struct.iommu_group** %2, align 8
  br label %115

115:                                              ; preds = %113, %108, %47, %39, %23, %18
  %116 = load %struct.iommu_group*, %struct.iommu_group** %2, align 8
  ret %struct.iommu_group* %116
}

declare dso_local %struct.iommu_group* @iommu_group_get(%struct.device*) #1

declare dso_local %struct.iommu_group* @ERR_PTR(i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @IS_ERR(%struct.iommu_group*) #1

declare dso_local %struct.iommu_domain* @__iommu_domain_alloc(%struct.TYPE_2__*, i64) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i64) #1

declare dso_local i32 @iommu_domain_set_attr(%struct.iommu_domain*, i32, i32*) #1

declare dso_local i32 @iommu_group_add_device(%struct.iommu_group*, %struct.device*) #1

declare dso_local i32 @iommu_group_put(%struct.iommu_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
