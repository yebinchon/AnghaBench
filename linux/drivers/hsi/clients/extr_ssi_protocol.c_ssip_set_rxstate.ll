; ModuleID = '/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_ssi_protocol.c_ssip_set_rxstate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_ssi_protocol.c_ssip_set_rxstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssi_protocol = type { i32, i32, i32, i32, i32 }

@SEND_IDLE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@SSIP_KATOUT = common dso_local global i32 0, align 4
@SSIP_WDTOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ssi_protocol*, i32)* @ssip_set_rxstate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ssip_set_rxstate(%struct.ssi_protocol* %0, i32 %1) #0 {
  %3 = alloca %struct.ssi_protocol*, align 8
  %4 = alloca i32, align 4
  store %struct.ssi_protocol* %0, %struct.ssi_protocol** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.ssi_protocol*, %struct.ssi_protocol** %3, align 8
  %7 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %6, i32 0, i32 0
  store i32 %5, i32* %7, align 4
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %45 [
    i32 129, label %9
    i32 128, label %23
    i32 130, label %30
  ]

9:                                                ; preds = %2
  %10 = load %struct.ssi_protocol*, %struct.ssi_protocol** %3, align 8
  %11 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %10, i32 0, i32 1
  %12 = call i32 @del_timer(i32* %11)
  %13 = load %struct.ssi_protocol*, %struct.ssi_protocol** %3, align 8
  %14 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @SEND_IDLE, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %9
  %19 = load %struct.ssi_protocol*, %struct.ssi_protocol** %3, align 8
  %20 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %19, i32 0, i32 2
  %21 = call i32 @del_timer(i32* %20)
  br label %22

22:                                               ; preds = %18, %9
  br label %46

23:                                               ; preds = %2
  %24 = load %struct.ssi_protocol*, %struct.ssi_protocol** %3, align 8
  %25 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %24, i32 0, i32 3
  %26 = call i32 @atomic_read(i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %46

29:                                               ; preds = %23
  br label %30

30:                                               ; preds = %2, %29
  %31 = load %struct.ssi_protocol*, %struct.ssi_protocol** %3, align 8
  %32 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %31, i32 0, i32 2
  %33 = load i64, i64* @jiffies, align 8
  %34 = load i32, i32* @SSIP_KATOUT, align 4
  %35 = call i64 @msecs_to_jiffies(i32 %34)
  %36 = add nsw i64 %33, %35
  %37 = call i32 @mod_timer(i32* %32, i64 %36)
  %38 = load %struct.ssi_protocol*, %struct.ssi_protocol** %3, align 8
  %39 = getelementptr inbounds %struct.ssi_protocol, %struct.ssi_protocol* %38, i32 0, i32 1
  %40 = load i64, i64* @jiffies, align 8
  %41 = load i32, i32* @SSIP_WDTOUT, align 4
  %42 = call i64 @msecs_to_jiffies(i32 %41)
  %43 = add nsw i64 %40, %42
  %44 = call i32 @mod_timer(i32* %39, i64 %43)
  br label %46

45:                                               ; preds = %2
  br label %46

46:                                               ; preds = %45, %30, %28, %22
  ret void
}

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
