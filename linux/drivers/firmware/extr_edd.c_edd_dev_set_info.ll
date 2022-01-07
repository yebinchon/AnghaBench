; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/extr_edd.c_edd_dev_set_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/extr_edd.c_edd_dev_set_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32* }
%struct.edd_device = type { i32, i32*, i32 }

@edd = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.edd_device*, i32)* @edd_dev_set_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @edd_dev_set_info(%struct.edd_device* %0, i32 %1) #0 {
  %3 = alloca %struct.edd_device*, align 8
  %4 = alloca i32, align 4
  store %struct.edd_device* %0, %struct.edd_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.edd_device*, %struct.edd_device** %3, align 8
  %7 = getelementptr inbounds %struct.edd_device, %struct.edd_device* %6, i32 0, i32 0
  store i32 %5, i32* %7, align 8
  %8 = load %struct.edd_device*, %struct.edd_device** %3, align 8
  %9 = call i64 @edd_has_mbr_signature(%struct.edd_device* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %2
  %12 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @edd, i32 0, i32 1), align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.edd_device*, %struct.edd_device** %3, align 8
  %18 = getelementptr inbounds %struct.edd_device, %struct.edd_device* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 8
  br label %19

19:                                               ; preds = %11, %2
  %20 = load %struct.edd_device*, %struct.edd_device** %3, align 8
  %21 = call i64 @edd_has_edd_info(%struct.edd_device* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %19
  %24 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @edd, i32 0, i32 0), align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load %struct.edd_device*, %struct.edd_device** %3, align 8
  %29 = getelementptr inbounds %struct.edd_device, %struct.edd_device* %28, i32 0, i32 1
  store i32* %27, i32** %29, align 8
  br label %30

30:                                               ; preds = %23, %19
  ret void
}

declare dso_local i64 @edd_has_mbr_signature(%struct.edd_device*) #1

declare dso_local i64 @edd_has_edd_info(%struct.edd_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
