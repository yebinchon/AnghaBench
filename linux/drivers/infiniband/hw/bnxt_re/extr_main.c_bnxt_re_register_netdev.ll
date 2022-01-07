; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_main.c_bnxt_re_register_netdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/bnxt_re/extr_main.c_bnxt_re_register_netdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_re_dev = type { %struct.bnxt_en_dev*, %struct.TYPE_4__ }
%struct.bnxt_en_dev = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.bnxt_en_dev*, i32, i32*, %struct.bnxt_re_dev*)* }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@BNXT_ROCE_ULP = common dso_local global i32 0, align 4
@bnxt_re_ulp_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt_re_dev*)* @bnxt_re_register_netdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_re_register_netdev(%struct.bnxt_re_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnxt_re_dev*, align 8
  %4 = alloca %struct.bnxt_en_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.bnxt_re_dev* %0, %struct.bnxt_re_dev** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %7 = icmp ne %struct.bnxt_re_dev* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %33

11:                                               ; preds = %1
  %12 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %13 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %12, i32 0, i32 0
  %14 = load %struct.bnxt_en_dev*, %struct.bnxt_en_dev** %13, align 8
  store %struct.bnxt_en_dev* %14, %struct.bnxt_en_dev** %4, align 8
  %15 = load %struct.bnxt_en_dev*, %struct.bnxt_en_dev** %4, align 8
  %16 = getelementptr inbounds %struct.bnxt_en_dev, %struct.bnxt_en_dev* %15, i32 0, i32 1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32 (%struct.bnxt_en_dev*, i32, i32*, %struct.bnxt_re_dev*)*, i32 (%struct.bnxt_en_dev*, i32, i32*, %struct.bnxt_re_dev*)** %18, align 8
  %20 = load %struct.bnxt_en_dev*, %struct.bnxt_en_dev** %4, align 8
  %21 = load i32, i32* @BNXT_ROCE_ULP, align 4
  %22 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %23 = call i32 %19(%struct.bnxt_en_dev* %20, i32 %21, i32* @bnxt_re_ulp_ops, %struct.bnxt_re_dev* %22)
  store i32 %23, i32* %5, align 4
  %24 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %25 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %24, i32 0, i32 0
  %26 = load %struct.bnxt_en_dev*, %struct.bnxt_en_dev** %25, align 8
  %27 = getelementptr inbounds %struct.bnxt_en_dev, %struct.bnxt_en_dev* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.bnxt_re_dev*, %struct.bnxt_re_dev** %3, align 8
  %30 = getelementptr inbounds %struct.bnxt_re_dev, %struct.bnxt_re_dev* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 8
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %11, %8
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
