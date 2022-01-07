; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvb_ca_en50221.c_dvb_ca_private_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-core/extr_dvb_ca_en50221.c_dvb_ca_private_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_ca_private = type { i32, %struct.dvb_ca_private*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dvb_ca_private*)* @dvb_ca_private_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dvb_ca_private_free(%struct.dvb_ca_private* %0) #0 {
  %2 = alloca %struct.dvb_ca_private*, align 8
  %3 = alloca i32, align 4
  store %struct.dvb_ca_private* %0, %struct.dvb_ca_private** %2, align 8
  %4 = load %struct.dvb_ca_private*, %struct.dvb_ca_private** %2, align 8
  %5 = getelementptr inbounds %struct.dvb_ca_private, %struct.dvb_ca_private* %4, i32 0, i32 3
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @dvb_free_device(i32 %6)
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %25, %1
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.dvb_ca_private*, %struct.dvb_ca_private** %2, align 8
  %11 = getelementptr inbounds %struct.dvb_ca_private, %struct.dvb_ca_private* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ult i32 %9, %12
  br i1 %13, label %14, label %28

14:                                               ; preds = %8
  %15 = load %struct.dvb_ca_private*, %struct.dvb_ca_private** %2, align 8
  %16 = getelementptr inbounds %struct.dvb_ca_private, %struct.dvb_ca_private* %15, i32 0, i32 1
  %17 = load %struct.dvb_ca_private*, %struct.dvb_ca_private** %16, align 8
  %18 = load i32, i32* %3, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.dvb_ca_private, %struct.dvb_ca_private* %17, i64 %19
  %21 = getelementptr inbounds %struct.dvb_ca_private, %struct.dvb_ca_private* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @vfree(i32 %23)
  br label %25

25:                                               ; preds = %14
  %26 = load i32, i32* %3, align 4
  %27 = add i32 %26, 1
  store i32 %27, i32* %3, align 4
  br label %8

28:                                               ; preds = %8
  %29 = load %struct.dvb_ca_private*, %struct.dvb_ca_private** %2, align 8
  %30 = getelementptr inbounds %struct.dvb_ca_private, %struct.dvb_ca_private* %29, i32 0, i32 1
  %31 = load %struct.dvb_ca_private*, %struct.dvb_ca_private** %30, align 8
  %32 = call i32 @kfree(%struct.dvb_ca_private* %31)
  %33 = load %struct.dvb_ca_private*, %struct.dvb_ca_private** %2, align 8
  %34 = call i32 @kfree(%struct.dvb_ca_private* %33)
  ret void
}

declare dso_local i32 @dvb_free_device(i32) #1

declare dso_local i32 @vfree(i32) #1

declare dso_local i32 @kfree(%struct.dvb_ca_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
