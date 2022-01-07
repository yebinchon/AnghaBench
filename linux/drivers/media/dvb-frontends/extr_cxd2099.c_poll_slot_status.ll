; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cxd2099.c_poll_slot_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_cxd2099.c_poll_slot_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_ca_en50221 = type { %struct.cxd* }
%struct.cxd = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_ca_en50221*, i32, i32)* @poll_slot_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @poll_slot_status(%struct.dvb_ca_en50221* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dvb_ca_en50221*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cxd*, align 8
  %8 = alloca i32, align 4
  store %struct.dvb_ca_en50221* %0, %struct.dvb_ca_en50221** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.dvb_ca_en50221*, %struct.dvb_ca_en50221** %4, align 8
  %10 = getelementptr inbounds %struct.dvb_ca_en50221, %struct.dvb_ca_en50221* %9, i32 0, i32 0
  %11 = load %struct.cxd*, %struct.cxd** %10, align 8
  store %struct.cxd* %11, %struct.cxd** %7, align 8
  %12 = load %struct.cxd*, %struct.cxd** %7, align 8
  %13 = getelementptr inbounds %struct.cxd, %struct.cxd* %12, i32 0, i32 1
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.cxd*, %struct.cxd** %7, align 8
  %16 = call i32 @campoll(%struct.cxd* %15)
  %17 = load %struct.cxd*, %struct.cxd** %7, align 8
  %18 = call i32 @read_reg(%struct.cxd* %17, i32 1, i32* %8)
  %19 = load %struct.cxd*, %struct.cxd** %7, align 8
  %20 = getelementptr inbounds %struct.cxd, %struct.cxd* %19, i32 0, i32 1
  %21 = call i32 @mutex_unlock(i32* %20)
  %22 = load %struct.cxd*, %struct.cxd** %7, align 8
  %23 = getelementptr inbounds %struct.cxd, %struct.cxd* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  ret i32 %24
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @campoll(%struct.cxd*) #1

declare dso_local i32 @read_reg(%struct.cxd*, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
