; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_ctrl_set_standard.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_ctrl_set_standard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drx_demod_instance = type { i32, i64 }
%struct.drxj_data = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"error %d\0A\00", align 1
@SCU_RAM_VERSION_HI__A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drx_demod_instance*, i32*)* @ctrl_set_standard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctrl_set_standard(%struct.drx_demod_instance* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drx_demod_instance*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.drxj_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.drx_demod_instance* %0, %struct.drx_demod_instance** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.drxj_data* null, %struct.drxj_data** %6, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %4, align 8
  %14 = icmp eq %struct.drx_demod_instance* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %12, %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %90

18:                                               ; preds = %12
  %19 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %4, align 8
  %20 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.drxj_data*
  store %struct.drxj_data* %22, %struct.drxj_data** %6, align 8
  %23 = load %struct.drxj_data*, %struct.drxj_data** %6, align 8
  %24 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  switch i32 %26, label %47 [
    i32 131, label %27
    i32 130, label %27
    i32 129, label %27
    i32 133, label %36
    i32 128, label %45
    i32 132, label %46
  ]

27:                                               ; preds = %18, %18, %18
  %28 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %4, align 8
  %29 = call i32 @power_down_qam(%struct.drx_demod_instance* %28, i32 0)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %86

35:                                               ; preds = %27
  br label %50

36:                                               ; preds = %18
  %37 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %4, align 8
  %38 = call i32 @power_down_vsb(%struct.drx_demod_instance* %37, i32 0)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %42)
  br label %86

44:                                               ; preds = %36
  br label %50

45:                                               ; preds = %18
  br label %50

46:                                               ; preds = %18
  br label %47

47:                                               ; preds = %18, %46
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %90

50:                                               ; preds = %45, %44, %35
  %51 = load i32*, i32** %5, align 8
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.drxj_data*, %struct.drxj_data** %6, align 8
  %54 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load i32*, i32** %5, align 8
  %56 = load i32, i32* %55, align 4
  switch i32 %56, label %80 [
    i32 131, label %57
    i32 130, label %57
    i32 129, label %57
    i32 133, label %71
  ]

57:                                               ; preds = %50, %50, %50
  br label %58

58:                                               ; preds = %57
  %59 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %4, align 8
  %60 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @SCU_RAM_VERSION_HI__A, align 4
  %63 = call i32 @drxj_dap_read_reg16(i32 %61, i32 %62, i32* %9, i32 0)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %58
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %67)
  br label %86

69:                                               ; preds = %58
  br label %70

70:                                               ; preds = %69
  br label %85

71:                                               ; preds = %50
  %72 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %4, align 8
  %73 = call i32 @set_vsb_leak_n_gain(%struct.drx_demod_instance* %72)
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %77)
  br label %86

79:                                               ; preds = %71
  br label %85

80:                                               ; preds = %50
  %81 = load %struct.drxj_data*, %struct.drxj_data** %6, align 8
  %82 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %81, i32 0, i32 0
  store i32 128, i32* %82, align 4
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %3, align 4
  br label %90

85:                                               ; preds = %79, %70
  store i32 0, i32* %3, align 4
  br label %90

86:                                               ; preds = %76, %66, %41, %32
  %87 = load %struct.drxj_data*, %struct.drxj_data** %6, align 8
  %88 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %87, i32 0, i32 0
  store i32 128, i32* %88, align 4
  %89 = load i32, i32* %7, align 4
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %86, %85, %80, %47, %15
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @power_down_qam(%struct.drx_demod_instance*, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @power_down_vsb(%struct.drx_demod_instance*, i32) #1

declare dso_local i32 @drxj_dap_read_reg16(i32, i32, i32*, i32) #1

declare dso_local i32 @set_vsb_leak_n_gain(%struct.drx_demod_instance*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
