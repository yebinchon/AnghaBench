; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_main.c_bnxt_re_dev_unreg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_main.c_bnxt_re_dev_unreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_re_dev = type { %struct.net_device*, %struct.bnxt_en_dev* }
%struct.net_device = type { i32 }
%struct.bnxt_en_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnxt_re_dev*)* @bnxt_re_dev_unreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnxt_re_dev_unreg(%struct.bnxt_re_dev* %0) #0 {
  %2 = alloca %struct.bnxt_re_dev*, align 8
  %3 = alloca %struct.bnxt_en_dev*, align 8
  %4 = alloca %struct.net_device*, align 8
  store %struct.bnxt_re_dev* %0, %struct.bnxt_re_dev** %2, align 8
  %5 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %2, align 8
  %6 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %5, i32 0, i32 1
  %7 = load %struct.bnxt_en_dev*, %struct.bnxt_en_dev** %6, align 8
  store %struct.bnxt_en_dev* %7, %struct.bnxt_en_dev** %3, align 8
  %8 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %2, align 8
  %9 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %8, i32 0, i32 0
  %10 = load %struct.net_device*, %struct.net_device** %9, align 8
  store %struct.net_device* %10, %struct.net_device** %4, align 8
  %11 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %2, align 8
  %12 = call i32 @bnxt_re_dev_remove(%struct.bnxt_re_dev* %11)
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = icmp ne %struct.net_device* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %struct.net_device*, %struct.net_device** %4, align 8
  %17 = load %struct.bnxt_en_dev*, %struct.bnxt_en_dev** %3, align 8
  %18 = call i32 @bnxt_re_dev_unprobe(%struct.net_device* %16, %struct.bnxt_en_dev* %17)
  br label %19

19:                                               ; preds = %15, %1
  ret void
}

declare dso_local i32 @bnxt_re_dev_remove(%struct.bnxt_re_dev*) #1

declare dso_local i32 @bnxt_re_dev_unprobe(%struct.net_device*, %struct.bnxt_en_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
