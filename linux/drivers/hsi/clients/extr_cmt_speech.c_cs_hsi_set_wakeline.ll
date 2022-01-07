; ModuleID = '/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_cmt_speech.c_cs_hsi_set_wakeline.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hsi/clients/extr_cmt_speech.c_cs_hsi_set_wakeline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs_hsi_iface = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"setting wake line to %d (%p)\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"wake line set to %d (%p)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cs_hsi_iface*, i32)* @cs_hsi_set_wakeline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cs_hsi_set_wakeline(%struct.cs_hsi_iface* %0, i32 %1) #0 {
  %3 = alloca %struct.cs_hsi_iface*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cs_hsi_iface* %0, %struct.cs_hsi_iface** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %7 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %6, i32 0, i32 3
  %8 = call i32 @spin_lock_bh(i32* %7)
  %9 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %10 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %27

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %17 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  store i32 1, i32* %5, align 4
  %18 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %19 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %24 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = call i32 @dev_dbg(i32* %21, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %22, %struct.TYPE_2__* %25)
  br label %27

27:                                               ; preds = %14, %2
  %28 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %29 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %28, i32 0, i32 3
  %30 = call i32 @spin_unlock_bh(i32* %29)
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %27
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %38 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @ssip_slave_start_tx(i32 %39)
  br label %46

41:                                               ; preds = %33
  %42 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %43 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @ssip_slave_stop_tx(i32 %44)
  br label %46

46:                                               ; preds = %41, %36
  br label %47

47:                                               ; preds = %46, %27
  %48 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %49 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %4, align 4
  %53 = load %struct.cs_hsi_iface*, %struct.cs_hsi_iface** %3, align 8
  %54 = getelementptr inbounds %struct.cs_hsi_iface, %struct.cs_hsi_iface* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = call i32 @dev_dbg(i32* %51, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %52, %struct.TYPE_2__* %55)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, %struct.TYPE_2__*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @ssip_slave_start_tx(i32) #1

declare dso_local i32 @ssip_slave_stop_tx(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
