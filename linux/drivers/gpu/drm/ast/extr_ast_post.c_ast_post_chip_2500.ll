; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_post.c_ast_post_chip_2500.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/ast/extr_ast_post.c_ast_post_chip_2500.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.ast_private* }
%struct.ast_private = type { i32 }

@AST_IO_CRTC_PORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"DRAM init failed !\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ast_post_chip_2500(%struct.drm_device* %0) #0 {
  %2 = alloca %struct.drm_device*, align 8
  %3 = alloca %struct.ast_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %2, align 8
  %6 = load %struct.drm_device*, %struct.drm_device** %2, align 8
  %7 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %6, i32 0, i32 0
  %8 = load %struct.ast_private*, %struct.ast_private** %7, align 8
  store %struct.ast_private* %8, %struct.ast_private** %3, align 8
  %9 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %10 = load i32, i32* @AST_IO_CRTC_PORT, align 4
  %11 = call i32 @ast_get_index_reg_mask(%struct.ast_private* %9, i32 %10, i32 208, i32 255)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = and i32 %12, 128
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %84

15:                                               ; preds = %1
  %16 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %17 = call i32 @ast_moutdwm(%struct.ast_private* %16, i32 509607936, i32 -1360193021)
  %18 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %19 = call i32 @ast_moutdwm(%struct.ast_private* %18, i32 509608068, i32 65536)
  %20 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %21 = call i32 @ast_moutdwm(%struct.ast_private* %20, i32 509608072, i32 0)
  %22 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %23 = call i32 @ast_moutdwm(%struct.ast_private* %22, i32 510533632, i32 378054824)
  %24 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %25 = call i32 @ast_write32(%struct.ast_private* %24, i32 61444, i32 510525440)
  %26 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %27 = call i32 @ast_write32(%struct.ast_private* %26, i32 61440, i32 1)
  %28 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %29 = call i32 @ast_write32(%struct.ast_private* %28, i32 73728, i32 378054824)
  br label %30

30:                                               ; preds = %34, %15
  %31 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %32 = call i32 @ast_read32(%struct.ast_private* %31, i32 73728)
  %33 = icmp ne i32 %32, 1
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %30

35:                                               ; preds = %30
  %36 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %37 = call i32 @ast_write32(%struct.ast_private* %36, i32 65536, i32 -60816631)
  br label %38

38:                                               ; preds = %42, %35
  %39 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %40 = call i32 @ast_read32(%struct.ast_private* %39, i32 65536)
  %41 = icmp ne i32 %40, 1
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  br label %38

43:                                               ; preds = %38
  %44 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %45 = call i32 @ast_read32(%struct.ast_private* %44, i32 73736)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = or i32 %46, 115
  store i32 %47, i32* %4, align 4
  %48 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @ast_write32(%struct.ast_private* %48, i32 73736, i32 %49)
  %51 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %52 = call i32 @ast_moutdwm(%struct.ast_private* %51, i32 510533776, i32 536870912)
  %53 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %54 = call i32 @ast_mindwm(%struct.ast_private* %53, i32 510533780)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = or i32 %55, 16384
  store i32 %56, i32* %4, align 4
  %57 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @ast_moutdwm(%struct.ast_private* %57, i32 510533780, i32 %58)
  %60 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %61 = call i32 @ast_mindwm(%struct.ast_private* %60, i32 510533744)
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = and i32 %62, 8388608
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %43
  %66 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %67 = call i32 @ast_moutdwm(%struct.ast_private* %66, i32 510533756, i32 8388608)
  %68 = call i32 @mdelay(i32 100)
  %69 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %70 = call i32 @ast_moutdwm(%struct.ast_private* %69, i32 510533744, i32 8388608)
  br label %71

71:                                               ; preds = %65, %43
  %72 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %73 = call i32 @ast_dram_init_2500(%struct.ast_private* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %71
  %76 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %77

77:                                               ; preds = %75, %71
  %78 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %79 = call i32 @ast_mindwm(%struct.ast_private* %78, i32 510533696)
  store i32 %79, i32* %4, align 4
  %80 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %81 = load i32, i32* %4, align 4
  %82 = or i32 %81, 64
  %83 = call i32 @ast_moutdwm(%struct.ast_private* %80, i32 510533696, i32 %82)
  br label %84

84:                                               ; preds = %77, %1
  br label %85

85:                                               ; preds = %89, %84
  %86 = load %struct.ast_private*, %struct.ast_private** %3, align 8
  %87 = load i32, i32* @AST_IO_CRTC_PORT, align 4
  %88 = call i32 @ast_get_index_reg_mask(%struct.ast_private* %86, i32 %87, i32 208, i32 255)
  store i32 %88, i32* %5, align 4
  br label %89

89:                                               ; preds = %85
  %90 = load i32, i32* %5, align 4
  %91 = and i32 %90, 64
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %85, label %93

93:                                               ; preds = %89
  ret void
}

declare dso_local i32 @ast_get_index_reg_mask(%struct.ast_private*, i32, i32, i32) #1

declare dso_local i32 @ast_moutdwm(%struct.ast_private*, i32, i32) #1

declare dso_local i32 @ast_write32(%struct.ast_private*, i32, i32) #1

declare dso_local i32 @ast_read32(%struct.ast_private*, i32) #1

declare dso_local i32 @ast_mindwm(%struct.ast_private*, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @ast_dram_init_2500(%struct.ast_private*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
