; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/b2c2/extr_flexcop-fe-tuner.c_flexcop_frontend_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/b2c2/extr_flexcop-fe-tuner.c_flexcop_frontend_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flexcop_device = type { i32, i32 }

@FC_STATE_FE_INIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flexcop_frontend_exit(%struct.flexcop_device* %0) #0 {
  %2 = alloca %struct.flexcop_device*, align 8
  store %struct.flexcop_device* %0, %struct.flexcop_device** %2, align 8
  %3 = load %struct.flexcop_device*, %struct.flexcop_device** %2, align 8
  %4 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @FC_STATE_FE_INIT, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %1
  %10 = load %struct.flexcop_device*, %struct.flexcop_device** %2, align 8
  %11 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @dvb_unregister_frontend(i32 %12)
  %14 = load %struct.flexcop_device*, %struct.flexcop_device** %2, align 8
  %15 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @dvb_frontend_detach(i32 %16)
  br label %18

18:                                               ; preds = %9, %1
  %19 = load i32, i32* @FC_STATE_FE_INIT, align 4
  %20 = xor i32 %19, -1
  %21 = load %struct.flexcop_device*, %struct.flexcop_device** %2, align 8
  %22 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, %20
  store i32 %24, i32* %22, align 4
  ret void
}

declare dso_local i32 @dvb_unregister_frontend(i32) #1

declare dso_local i32 @dvb_frontend_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
