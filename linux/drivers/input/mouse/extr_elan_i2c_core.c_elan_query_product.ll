; ModuleID = '/home/carl/AnghaBench/linux/drivers/input/mouse/extr_elan_i2c_core.c_elan_query_product.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/input/mouse/extr_elan_i2c_core.c_elan_query_product.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elan_tp_data = type { i32, i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (i32, i32*)*, i32 (i32, i32*, i32*, i32*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.elan_tp_data*)* @elan_query_product to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elan_query_product(%struct.elan_tp_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.elan_tp_data*, align 8
  %4 = alloca i32, align 4
  store %struct.elan_tp_data* %0, %struct.elan_tp_data** %3, align 8
  %5 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %6 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %5, i32 0, i32 4
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32 (i32, i32*)*, i32 (i32, i32*)** %8, align 8
  %10 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %11 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %14 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %13, i32 0, i32 5
  %15 = call i32 %9(i32 %12, i32* %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %41

20:                                               ; preds = %1
  %21 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %22 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %21, i32 0, i32 4
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32 (i32, i32*, i32*, i32*)*, i32 (i32, i32*, i32*, i32*)** %24, align 8
  %26 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %27 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %30 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %29, i32 0, i32 2
  %31 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %32 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %31, i32 0, i32 1
  %33 = load %struct.elan_tp_data*, %struct.elan_tp_data** %3, align 8
  %34 = getelementptr inbounds %struct.elan_tp_data, %struct.elan_tp_data* %33, i32 0, i32 0
  %35 = call i32 %25(i32 %28, i32* %30, i32* %32, i32* %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %20
  %39 = load i32, i32* %4, align 4
  store i32 %39, i32* %2, align 4
  br label %41

40:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %40, %38, %18
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
