; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_mt312.c_mt312_i2c_gate_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_mt312.c_mt312_i2c_gate_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.mt312_state* }
%struct.mt312_state = type { i32 }

@GPP_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32)* @mt312_i2c_gate_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt312_i2c_gate_ctrl(%struct.dvb_frontend* %0, i32 %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mt312_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %9 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %8, i32 0, i32 0
  %10 = load %struct.mt312_state*, %struct.mt312_state** %9, align 8
  store %struct.mt312_state* %10, %struct.mt312_state** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.mt312_state*, %struct.mt312_state** %5, align 8
  %12 = getelementptr inbounds %struct.mt312_state, %struct.mt312_state* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %24 [
    i32 128, label %14
  ]

14:                                               ; preds = %2
  %15 = load %struct.mt312_state*, %struct.mt312_state** %5, align 8
  %16 = load i32, i32* @GPP_CTRL, align 4
  %17 = call i32 @mt312_readreg(%struct.mt312_state* %15, i32 %16, i32* %6)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %38

21:                                               ; preds = %14
  %22 = load i32, i32* %6, align 4
  %23 = and i32 %22, 128
  store i32 %23, i32* %6, align 4
  br label %24

24:                                               ; preds = %2, %21
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, i32* %6, align 4
  %29 = or i32 %28, 64
  store i32 %29, i32* %6, align 4
  br label %33

30:                                               ; preds = %24
  %31 = load i32, i32* %6, align 4
  %32 = and i32 %31, -65
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %30, %27
  %34 = load %struct.mt312_state*, %struct.mt312_state** %5, align 8
  %35 = load i32, i32* @GPP_CTRL, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @mt312_writereg(%struct.mt312_state* %34, i32 %35, i32 %36)
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %33, %20
  %39 = load i32, i32* %7, align 4
  ret i32 %39
}

declare dso_local i32 @mt312_readreg(%struct.mt312_state*, i32, i32*) #1

declare dso_local i32 @mt312_writereg(%struct.mt312_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
