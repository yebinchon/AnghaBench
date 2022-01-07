; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvb_net.c_ule_bridged_sndu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvb_net.c_ule_bridged_sndu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_net_priv = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ethhdr = type { i32 }

@ETH_P_802_3_MIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_net_priv*)* @ule_bridged_sndu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ule_bridged_sndu(%struct.dvb_net_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_net_priv*, align 8
  %4 = alloca %struct.ethhdr*, align 8
  %5 = alloca i32, align 4
  store %struct.dvb_net_priv* %0, %struct.dvb_net_priv** %3, align 8
  %6 = load %struct.dvb_net_priv*, %struct.dvb_net_priv** %3, align 8
  %7 = getelementptr inbounds %struct.dvb_net_priv, %struct.dvb_net_priv* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = sext i32 %8 to i64
  %10 = inttoptr i64 %9 to %struct.ethhdr*
  store %struct.ethhdr* %10, %struct.ethhdr** %4, align 8
  %11 = load %struct.ethhdr*, %struct.ethhdr** %4, align 8
  %12 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @ntohs(i32 %13)
  %15 = load i32, i32* @ETH_P_802_3_MIN, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %44

17:                                               ; preds = %1
  %18 = load %struct.dvb_net_priv*, %struct.dvb_net_priv** %3, align 8
  %19 = getelementptr inbounds %struct.dvb_net_priv, %struct.dvb_net_priv* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = load %struct.dvb_net_priv*, %struct.dvb_net_priv** %3, align 8
  %23 = getelementptr inbounds %struct.dvb_net_priv, %struct.dvb_net_priv* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = add i64 %25, 4
  %27 = load %struct.dvb_net_priv*, %struct.dvb_net_priv** %3, align 8
  %28 = getelementptr inbounds %struct.dvb_net_priv, %struct.dvb_net_priv* %27, i32 0, i32 3
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = sub i64 %26, %32
  %34 = sub i64 %21, %33
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.ethhdr*, %struct.ethhdr** %4, align 8
  %38 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ntohs(i32 %39)
  %41 = icmp ne i32 %36, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %17
  store i32 -1, i32* %2, align 4
  br label %47

43:                                               ; preds = %17
  br label %44

44:                                               ; preds = %43, %1
  %45 = load %struct.dvb_net_priv*, %struct.dvb_net_priv** %3, align 8
  %46 = getelementptr inbounds %struct.dvb_net_priv, %struct.dvb_net_priv* %45, i32 0, i32 2
  store i32 1, i32* %46, align 8
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %44, %42
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
