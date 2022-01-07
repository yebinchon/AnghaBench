; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_drm_vop.c_scl_vop_cal_scale.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/rockchip/extr_rockchip_drm_vop.c_scl_vop_cal_scale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SCL_FT_DEFAULT_FIXPOINT_SHIFT = common dso_local global i32 0, align 4
@SCALE_UP = common dso_local global i32 0, align 4
@SCALE_DOWN = common dso_local global i32 0, align 4
@SCALE_UP_BIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, i32*)* @scl_vop_cal_scale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scl_vop_cal_scale(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %14 = load i32, i32* @SCL_FT_DEFAULT_FIXPOINT_SHIFT, align 4
  %15 = shl i32 1, %14
  store i32 %15, i32* %13, align 4
  %16 = load i32*, i32** %12, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %6
  %19 = load i32*, i32** %12, align 8
  store i32 0, i32* %19, align 4
  br label %20

20:                                               ; preds = %18, %6
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %20
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @SCALE_UP, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @GET_SCL_FT_BIC(i32 %28, i32 %29)
  store i32 %30, i32* %13, align 4
  br label %40

31:                                               ; preds = %23
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @SCALE_DOWN, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @GET_SCL_FT_BILI_DN(i32 %36, i32 %37)
  store i32 %38, i32* %13, align 4
  br label %39

39:                                               ; preds = %35, %31
  br label %40

40:                                               ; preds = %39, %27
  br label %82

41:                                               ; preds = %20
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @SCALE_UP, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %58

45:                                               ; preds = %41
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* @SCALE_UP_BIL, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @GET_SCL_FT_BILI_UP(i32 %50, i32 %51)
  store i32 %52, i32* %13, align 4
  br label %57

53:                                               ; preds = %45
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @GET_SCL_FT_BIC(i32 %54, i32 %55)
  store i32 %56, i32* %13, align 4
  br label %57

57:                                               ; preds = %53, %49
  br label %81

58:                                               ; preds = %41
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @SCALE_DOWN, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %80

62:                                               ; preds = %58
  %63 = load i32*, i32** %12, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %75

65:                                               ; preds = %62
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @scl_get_vskiplines(i32 %66, i32 %67)
  %69 = load i32*, i32** %12, align 8
  store i32 %68, i32* %69, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %9, align 4
  %72 = load i32*, i32** %12, align 8
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @scl_get_bili_dn_vskip(i32 %70, i32 %71, i32 %73)
  store i32 %74, i32* %13, align 4
  br label %79

75:                                               ; preds = %62
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @GET_SCL_FT_BILI_DN(i32 %76, i32 %77)
  store i32 %78, i32* %13, align 4
  br label %79

79:                                               ; preds = %75, %65
  br label %80

80:                                               ; preds = %79, %58
  br label %81

81:                                               ; preds = %80, %57
  br label %82

82:                                               ; preds = %81, %40
  %83 = load i32, i32* %13, align 4
  ret i32 %83
}

declare dso_local i32 @GET_SCL_FT_BIC(i32, i32) #1

declare dso_local i32 @GET_SCL_FT_BILI_DN(i32, i32) #1

declare dso_local i32 @GET_SCL_FT_BILI_UP(i32, i32) #1

declare dso_local i32 @scl_get_vskiplines(i32, i32) #1

declare dso_local i32 @scl_get_bili_dn_vskip(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
