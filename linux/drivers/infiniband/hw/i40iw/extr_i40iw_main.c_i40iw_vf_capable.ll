; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_main.c_i40iw_vf_capable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_main.c_i40iw_vf_capable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_info = type { i32 }
%struct.i40e_client = type { i32 }
%struct.i40iw_handler = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.i40iw_sc_dev }
%struct.i40iw_sc_dev = type { %struct.TYPE_3__** }
%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_info*, %struct.i40e_client*, i64)* @i40iw_vf_capable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40iw_vf_capable(%struct.i40e_info* %0, %struct.i40e_client* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.i40e_info*, align 8
  %6 = alloca %struct.i40e_client*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.i40iw_handler*, align 8
  %9 = alloca %struct.i40iw_sc_dev*, align 8
  %10 = alloca i32, align 4
  store %struct.i40e_info* %0, %struct.i40e_info** %5, align 8
  store %struct.i40e_client* %1, %struct.i40e_client** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.i40e_info*, %struct.i40e_info** %5, align 8
  %12 = call %struct.i40iw_handler* @i40iw_find_i40e_handler(%struct.i40e_info* %11)
  store %struct.i40iw_handler* %12, %struct.i40iw_handler** %8, align 8
  %13 = load %struct.i40iw_handler*, %struct.i40iw_handler** %8, align 8
  %14 = icmp ne %struct.i40iw_handler* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %54

16:                                               ; preds = %3
  %17 = load %struct.i40iw_handler*, %struct.i40iw_handler** %8, align 8
  %18 = getelementptr inbounds %struct.i40iw_handler, %struct.i40iw_handler* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  store %struct.i40iw_sc_dev* %19, %struct.i40iw_sc_dev** %9, align 8
  store i32 0, i32* %10, align 4
  br label %20

20:                                               ; preds = %50, %16
  %21 = load i32, i32* %10, align 4
  %22 = load %struct.i40iw_handler*, %struct.i40iw_handler** %8, align 8
  %23 = getelementptr inbounds %struct.i40iw_handler, %struct.i40iw_handler* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ult i32 %21, %25
  br i1 %26, label %27, label %53

27:                                               ; preds = %20
  %28 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %9, align 8
  %29 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %29, align 8
  %31 = load i32, i32* %10, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %30, i64 %32
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = icmp ne %struct.TYPE_3__* %34, null
  br i1 %35, label %36, label %48

36:                                               ; preds = %27
  %37 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %9, align 8
  %38 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %38, align 8
  %40 = load i32, i32* %10, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %39, i64 %41
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %7, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %36, %27
  store i32 1, i32* %4, align 4
  br label %54

49:                                               ; preds = %36
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %10, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %10, align 4
  br label %20

53:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %53, %48, %15
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local %struct.i40iw_handler* @i40iw_find_i40e_handler(%struct.i40e_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
