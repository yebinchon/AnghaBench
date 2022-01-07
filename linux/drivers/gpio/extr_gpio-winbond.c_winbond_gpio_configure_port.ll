; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-winbond.c_winbond_gpio_configure_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-winbond.c_winbond_gpio_configure_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.winbond_gpio_info = type { i64, i32, i32, i32, i32, %struct.winbond_gpio_port_conflict }
%struct.winbond_gpio_port_conflict = type { i64, i32*, i64, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@winbond_gpio_infos = common dso_local global %struct.winbond_gpio_info* null, align 8
@WB_SIO_DEV_NONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"enabled GPIO%u share pins with active %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"disabling GPIO%u as %s is enabled\0A\00", align 1
@params = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"GPIO%u pins are %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"push-pull\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"open drain\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32)* @winbond_gpio_configure_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @winbond_gpio_configure_port(i64 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.winbond_gpio_info*, align 8
  %7 = alloca %struct.winbond_gpio_port_conflict*, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.winbond_gpio_info*, %struct.winbond_gpio_info** @winbond_gpio_infos, align 8
  %9 = load i32, i32* %5, align 4
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.winbond_gpio_info, %struct.winbond_gpio_info* %8, i64 %10
  store %struct.winbond_gpio_info* %11, %struct.winbond_gpio_info** %6, align 8
  %12 = load %struct.winbond_gpio_info*, %struct.winbond_gpio_info** %6, align 8
  %13 = getelementptr inbounds %struct.winbond_gpio_info, %struct.winbond_gpio_info* %12, i32 0, i32 5
  store %struct.winbond_gpio_port_conflict* %13, %struct.winbond_gpio_port_conflict** %7, align 8
  %14 = load %struct.winbond_gpio_port_conflict*, %struct.winbond_gpio_port_conflict** %7, align 8
  %15 = getelementptr inbounds %struct.winbond_gpio_port_conflict, %struct.winbond_gpio_port_conflict* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %61

18:                                               ; preds = %2
  %19 = load %struct.winbond_gpio_port_conflict*, %struct.winbond_gpio_port_conflict** %7, align 8
  %20 = getelementptr inbounds %struct.winbond_gpio_port_conflict, %struct.winbond_gpio_port_conflict* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @WB_SIO_DEV_NONE, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = load i64, i64* %4, align 8
  %26 = load %struct.winbond_gpio_port_conflict*, %struct.winbond_gpio_port_conflict** %7, align 8
  %27 = getelementptr inbounds %struct.winbond_gpio_port_conflict, %struct.winbond_gpio_port_conflict* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @winbond_sio_select_logical(i64 %25, i64 %28)
  br label %30

30:                                               ; preds = %24, %18
  %31 = load i64, i64* %4, align 8
  %32 = load %struct.winbond_gpio_port_conflict*, %struct.winbond_gpio_port_conflict** %7, align 8
  %33 = getelementptr inbounds %struct.winbond_gpio_port_conflict, %struct.winbond_gpio_port_conflict* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.winbond_gpio_port_conflict*, %struct.winbond_gpio_port_conflict** %7, align 8
  %36 = getelementptr inbounds %struct.winbond_gpio_port_conflict, %struct.winbond_gpio_port_conflict* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @winbond_sio_reg_btest(i64 %31, i32 %34, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %60

40:                                               ; preds = %30
  %41 = load %struct.winbond_gpio_port_conflict*, %struct.winbond_gpio_port_conflict** %7, align 8
  %42 = getelementptr inbounds %struct.winbond_gpio_port_conflict, %struct.winbond_gpio_port_conflict* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %40
  %46 = load i32, i32* %5, align 4
  %47 = add i32 %46, 1
  %48 = load %struct.winbond_gpio_port_conflict*, %struct.winbond_gpio_port_conflict** %7, align 8
  %49 = getelementptr inbounds %struct.winbond_gpio_port_conflict, %struct.winbond_gpio_port_conflict* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @pr_warn(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %47, i32* %50)
  br label %59

52:                                               ; preds = %40
  %53 = load i32, i32* %5, align 4
  %54 = add i32 %53, 1
  %55 = load %struct.winbond_gpio_port_conflict*, %struct.winbond_gpio_port_conflict** %7, align 8
  %56 = getelementptr inbounds %struct.winbond_gpio_port_conflict, %struct.winbond_gpio_port_conflict* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 @pr_warn(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %54, i32* %57)
  store i32 0, i32* %3, align 4
  br label %134

59:                                               ; preds = %45
  br label %60

60:                                               ; preds = %59, %30
  br label %61

61:                                               ; preds = %60, %2
  %62 = load i32, i32* %5, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i64, i64* %4, align 8
  %66 = call i32 @winbond_gpio_configure_port0_pins(i64 %65)
  br label %74

67:                                               ; preds = %61
  %68 = load i32, i32* %5, align 4
  %69 = icmp eq i32 %68, 1
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load i64, i64* %4, align 8
  %72 = call i32 @winbond_gpio_configure_port1_check_i2c(i64 %71)
  br label %73

73:                                               ; preds = %70, %67
  br label %74

74:                                               ; preds = %73, %64
  %75 = load i64, i64* %4, align 8
  %76 = load %struct.winbond_gpio_info*, %struct.winbond_gpio_info** %6, align 8
  %77 = getelementptr inbounds %struct.winbond_gpio_info, %struct.winbond_gpio_info* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @winbond_sio_select_logical(i64 %75, i64 %78)
  %80 = load i64, i64* %4, align 8
  %81 = load %struct.winbond_gpio_info*, %struct.winbond_gpio_info** %6, align 8
  %82 = getelementptr inbounds %struct.winbond_gpio_info, %struct.winbond_gpio_info* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.winbond_gpio_info*, %struct.winbond_gpio_info** %6, align 8
  %85 = getelementptr inbounds %struct.winbond_gpio_info, %struct.winbond_gpio_info* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @winbond_sio_reg_bset(i64 %80, i32 %83, i32 %86)
  %88 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @params, i32 0, i32 0), align 4
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @BIT(i32 %89)
  %91 = and i32 %88, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %74
  %94 = load i64, i64* %4, align 8
  %95 = load %struct.winbond_gpio_info*, %struct.winbond_gpio_info** %6, align 8
  %96 = getelementptr inbounds %struct.winbond_gpio_info, %struct.winbond_gpio_info* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.winbond_gpio_info*, %struct.winbond_gpio_info** %6, align 8
  %99 = getelementptr inbounds %struct.winbond_gpio_info, %struct.winbond_gpio_info* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @winbond_sio_reg_bset(i64 %94, i32 %97, i32 %100)
  br label %133

102:                                              ; preds = %74
  %103 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @params, i32 0, i32 1), align 4
  %104 = load i32, i32* %5, align 4
  %105 = call i32 @BIT(i32 %104)
  %106 = and i32 %103, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %117

108:                                              ; preds = %102
  %109 = load i64, i64* %4, align 8
  %110 = load %struct.winbond_gpio_info*, %struct.winbond_gpio_info** %6, align 8
  %111 = getelementptr inbounds %struct.winbond_gpio_info, %struct.winbond_gpio_info* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.winbond_gpio_info*, %struct.winbond_gpio_info** %6, align 8
  %114 = getelementptr inbounds %struct.winbond_gpio_info, %struct.winbond_gpio_info* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @winbond_sio_reg_bclear(i64 %109, i32 %112, i32 %115)
  br label %132

117:                                              ; preds = %102
  %118 = load i32, i32* %5, align 4
  %119 = add i32 %118, 1
  %120 = load i64, i64* %4, align 8
  %121 = load %struct.winbond_gpio_info*, %struct.winbond_gpio_info** %6, align 8
  %122 = getelementptr inbounds %struct.winbond_gpio_info, %struct.winbond_gpio_info* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.winbond_gpio_info*, %struct.winbond_gpio_info** %6, align 8
  %125 = getelementptr inbounds %struct.winbond_gpio_info, %struct.winbond_gpio_info* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = call i64 @winbond_sio_reg_btest(i64 %120, i32 %123, i32 %126)
  %128 = icmp ne i64 %127, 0
  %129 = zext i1 %128 to i64
  %130 = select i1 %128, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0)
  %131 = call i32 @pr_notice(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %119, i8* %130)
  br label %132

132:                                              ; preds = %117, %108
  br label %133

133:                                              ; preds = %132, %93
  store i32 1, i32* %3, align 4
  br label %134

134:                                              ; preds = %133, %52
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

declare dso_local i32 @winbond_sio_select_logical(i64, i64) #1

declare dso_local i64 @winbond_sio_reg_btest(i64, i32, i32) #1

declare dso_local i32 @pr_warn(i8*, i32, i32*) #1

declare dso_local i32 @winbond_gpio_configure_port0_pins(i64) #1

declare dso_local i32 @winbond_gpio_configure_port1_check_i2c(i64) #1

declare dso_local i32 @winbond_sio_reg_bset(i64, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @winbond_sio_reg_bclear(i64, i32, i32) #1

declare dso_local i32 @pr_notice(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
