; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_s921.c_s921_tune.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_s921.c_s921_tune.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@FE_TUNE_MODE_ONESHOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32, i32, i32*, i32*)* @s921_tune to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s921_tune(%struct.dvb_frontend* %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.dvb_frontend*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %11, align 4
  %12 = call i32 @dprintk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %5
  %16 = load %struct.dvb_frontend*, %struct.dvb_frontend** %6, align 8
  %17 = call i32 @s921_set_frontend(%struct.dvb_frontend* %16)
  store i32 %17, i32* %11, align 4
  br label %18

18:                                               ; preds = %15, %5
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @FE_TUNE_MODE_ONESHOT, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %18
  %24 = load %struct.dvb_frontend*, %struct.dvb_frontend** %6, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = call i32 @s921_read_status(%struct.dvb_frontend* %24, i32* %25)
  br label %27

27:                                               ; preds = %23, %18
  %28 = load i32, i32* %11, align 4
  ret i32 %28
}

declare dso_local i32 @dprintk(i8*) #1

declare dso_local i32 @s921_set_frontend(%struct.dvb_frontend*) #1

declare dso_local i32 @s921_read_status(%struct.dvb_frontend*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
