; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_ctrl_i2c_bridge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_ctrl_i2c_bridge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drx_demod_instance = type { i32 }
%struct.drxj_hi_cmd = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@SIO_HI_RA_RAM_CMD_BRDCTRL = common dso_local global i32 0, align 4
@SIO_HI_RA_RAM_PAR_1_PAR1_SEC_KEY = common dso_local global i32 0, align 4
@SIO_HI_RA_RAM_PAR_2_BRD_CFG_CLOSED = common dso_local global i32 0, align 4
@SIO_HI_RA_RAM_PAR_2_BRD_CFG_OPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drx_demod_instance*, i32*)* @ctrl_i2c_bridge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctrl_i2c_bridge(%struct.drx_demod_instance* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drx_demod_instance*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.drxj_hi_cmd, align 4
  %7 = alloca i32, align 4
  store %struct.drx_demod_instance* %0, %struct.drx_demod_instance** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32*, i32** %5, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %32

13:                                               ; preds = %2
  %14 = load i32, i32* @SIO_HI_RA_RAM_CMD_BRDCTRL, align 4
  %15 = getelementptr inbounds %struct.drxj_hi_cmd, %struct.drxj_hi_cmd* %6, i32 0, i32 2
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* @SIO_HI_RA_RAM_PAR_1_PAR1_SEC_KEY, align 4
  %17 = getelementptr inbounds %struct.drxj_hi_cmd, %struct.drxj_hi_cmd* %6, i32 0, i32 1
  store i32 %16, i32* %17, align 4
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %13
  %22 = load i32, i32* @SIO_HI_RA_RAM_PAR_2_BRD_CFG_CLOSED, align 4
  %23 = getelementptr inbounds %struct.drxj_hi_cmd, %struct.drxj_hi_cmd* %6, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  br label %27

24:                                               ; preds = %13
  %25 = load i32, i32* @SIO_HI_RA_RAM_PAR_2_BRD_CFG_OPEN, align 4
  %26 = getelementptr inbounds %struct.drxj_hi_cmd, %struct.drxj_hi_cmd* %6, i32 0, i32 0
  store i32 %25, i32* %26, align 4
  br label %27

27:                                               ; preds = %24, %21
  %28 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %4, align 8
  %29 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @hi_command(i32 %30, %struct.drxj_hi_cmd* %6, i32* %7)
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %27, %10
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @hi_command(i32, %struct.drxj_hi_cmd*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
