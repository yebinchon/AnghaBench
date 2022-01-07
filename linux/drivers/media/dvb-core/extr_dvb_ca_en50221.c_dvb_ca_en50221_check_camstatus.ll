; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvb_ca_en50221.c_dvb_ca_en50221_check_camstatus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvb_ca_en50221.c_dvb_ca_en50221_check_camstatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_ca_private = type { i32, i32, %struct.TYPE_2__*, %struct.dvb_ca_slot* }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*, i32, i32)* }
%struct.dvb_ca_slot = type { i64, i32, i32 }

@DVB_CA_EN50221_FLAG_IRQ_CAMCHANGE = common dso_local global i32 0, align 4
@DVB_CA_EN50221_POLL_CAM_PRESENT = common dso_local global i32 0, align 4
@DVB_CA_EN50221_POLL_CAM_CHANGED = common dso_local global i32 0, align 4
@DVB_CA_SLOTSTATE_NONE = common dso_local global i64 0, align 8
@DVB_CA_EN50221_CAMCHANGE_REMOVED = common dso_local global i32 0, align 4
@DVB_CA_EN50221_CAMCHANGE_INSERTED = common dso_local global i32 0, align 4
@DVB_CA_SLOTSTATE_WAITREADY = common dso_local global i64 0, align 8
@DVB_CA_EN50221_POLL_CAM_READY = common dso_local global i32 0, align 4
@DVB_CA_SLOTSTATE_VALIDATE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_ca_private*, i32)* @dvb_ca_en50221_check_camstatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvb_ca_en50221_check_camstatus(%struct.dvb_ca_private* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_ca_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dvb_ca_slot*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dvb_ca_private* %0, %struct.dvb_ca_private** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.dvb_ca_private*, %struct.dvb_ca_private** %4, align 8
  %12 = getelementptr inbounds %struct.dvb_ca_private, %struct.dvb_ca_private* %11, i32 0, i32 3
  %13 = load %struct.dvb_ca_slot*, %struct.dvb_ca_slot** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.dvb_ca_slot, %struct.dvb_ca_slot* %13, i64 %15
  store %struct.dvb_ca_slot* %16, %struct.dvb_ca_slot** %6, align 8
  %17 = load %struct.dvb_ca_private*, %struct.dvb_ca_private** %4, align 8
  %18 = getelementptr inbounds %struct.dvb_ca_private, %struct.dvb_ca_private* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @DVB_CA_EN50221_FLAG_IRQ_CAMCHANGE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %2
  %24 = load %struct.dvb_ca_slot*, %struct.dvb_ca_slot** %6, align 8
  %25 = getelementptr inbounds %struct.dvb_ca_slot, %struct.dvb_ca_slot* %24, i32 0, i32 1
  %26 = call i64 @atomic_read(i32* %25)
  %27 = icmp ne i64 %26, 0
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %3, align 4
  br label %104

29:                                               ; preds = %2
  %30 = load %struct.dvb_ca_private*, %struct.dvb_ca_private** %4, align 8
  %31 = getelementptr inbounds %struct.dvb_ca_private, %struct.dvb_ca_private* %30, i32 0, i32 2
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32 (%struct.TYPE_2__*, i32, i32)*, i32 (%struct.TYPE_2__*, i32, i32)** %33, align 8
  %35 = load %struct.dvb_ca_private*, %struct.dvb_ca_private** %4, align 8
  %36 = getelementptr inbounds %struct.dvb_ca_private, %struct.dvb_ca_private* %35, i32 0, i32 2
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.dvb_ca_private*, %struct.dvb_ca_private** %4, align 8
  %40 = getelementptr inbounds %struct.dvb_ca_private, %struct.dvb_ca_private* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 %34(%struct.TYPE_2__* %37, i32 %38, i32 %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @DVB_CA_EN50221_POLL_CAM_PRESENT, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i32 1, i32 0
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @DVB_CA_EN50221_POLL_CAM_CHANGED, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 1, i32 0
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %68, label %57

57:                                               ; preds = %29
  %58 = load %struct.dvb_ca_slot*, %struct.dvb_ca_slot** %6, align 8
  %59 = getelementptr inbounds %struct.dvb_ca_slot, %struct.dvb_ca_slot* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @DVB_CA_SLOTSTATE_NONE, align 8
  %62 = icmp ne i64 %60, %61
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp ne i32 %64, %65
  %67 = zext i1 %66 to i32
  store i32 %67, i32* %9, align 4
  br label %68

68:                                               ; preds = %57, %29
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %86

71:                                               ; preds = %68
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %71
  %75 = load i32, i32* @DVB_CA_EN50221_CAMCHANGE_REMOVED, align 4
  %76 = load %struct.dvb_ca_slot*, %struct.dvb_ca_slot** %6, align 8
  %77 = getelementptr inbounds %struct.dvb_ca_slot, %struct.dvb_ca_slot* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 4
  br label %82

78:                                               ; preds = %71
  %79 = load i32, i32* @DVB_CA_EN50221_CAMCHANGE_INSERTED, align 4
  %80 = load %struct.dvb_ca_slot*, %struct.dvb_ca_slot** %6, align 8
  %81 = getelementptr inbounds %struct.dvb_ca_slot, %struct.dvb_ca_slot* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 4
  br label %82

82:                                               ; preds = %78, %74
  %83 = load %struct.dvb_ca_slot*, %struct.dvb_ca_slot** %6, align 8
  %84 = getelementptr inbounds %struct.dvb_ca_slot, %struct.dvb_ca_slot* %83, i32 0, i32 1
  %85 = call i32 @atomic_set(i32* %84, i32 1)
  br label %102

86:                                               ; preds = %68
  %87 = load %struct.dvb_ca_slot*, %struct.dvb_ca_slot** %6, align 8
  %88 = getelementptr inbounds %struct.dvb_ca_slot, %struct.dvb_ca_slot* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @DVB_CA_SLOTSTATE_WAITREADY, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %101

92:                                               ; preds = %86
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* @DVB_CA_EN50221_POLL_CAM_READY, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %92
  %98 = load i64, i64* @DVB_CA_SLOTSTATE_VALIDATE, align 8
  %99 = load %struct.dvb_ca_slot*, %struct.dvb_ca_slot** %6, align 8
  %100 = getelementptr inbounds %struct.dvb_ca_slot, %struct.dvb_ca_slot* %99, i32 0, i32 0
  store i64 %98, i64* %100, align 8
  br label %101

101:                                              ; preds = %97, %92, %86
  br label %102

102:                                              ; preds = %101, %82
  %103 = load i32, i32* %9, align 4
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %102, %23
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
