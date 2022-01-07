; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_main.c_i40iw_dele_ceqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_main.c_i40iw_dele_ceqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40iw_device = type { i64, %struct.i40iw_sc_dev, i64, %struct.i40iw_msix_vector*, %struct.i40iw_ceq* }
%struct.i40iw_sc_dev = type { i32 }
%struct.i40iw_msix_vector = type { i32 }
%struct.i40iw_ceq = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40iw_device*)* @i40iw_dele_ceqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40iw_dele_ceqs(%struct.i40iw_device* %0) #0 {
  %2 = alloca %struct.i40iw_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.i40iw_sc_dev*, align 8
  %5 = alloca %struct.i40iw_ceq*, align 8
  %6 = alloca %struct.i40iw_msix_vector*, align 8
  store %struct.i40iw_device* %0, %struct.i40iw_device** %2, align 8
  store i64 0, i64* %3, align 8
  %7 = load %struct.i40iw_device*, %struct.i40iw_device** %2, align 8
  %8 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %7, i32 0, i32 1
  store %struct.i40iw_sc_dev* %8, %struct.i40iw_sc_dev** %4, align 8
  %9 = load %struct.i40iw_device*, %struct.i40iw_device** %2, align 8
  %10 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %9, i32 0, i32 4
  %11 = load %struct.i40iw_ceq*, %struct.i40iw_ceq** %10, align 8
  store %struct.i40iw_ceq* %11, %struct.i40iw_ceq** %5, align 8
  %12 = load %struct.i40iw_device*, %struct.i40iw_device** %2, align 8
  %13 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %12, i32 0, i32 3
  %14 = load %struct.i40iw_msix_vector*, %struct.i40iw_msix_vector** %13, align 8
  store %struct.i40iw_msix_vector* %14, %struct.i40iw_msix_vector** %6, align 8
  %15 = load %struct.i40iw_device*, %struct.i40iw_device** %2, align 8
  %16 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %1
  %20 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %4, align 8
  %21 = load %struct.i40iw_msix_vector*, %struct.i40iw_msix_vector** %6, align 8
  %22 = load %struct.i40iw_device*, %struct.i40iw_device** %2, align 8
  %23 = bitcast %struct.i40iw_device* %22 to i8*
  %24 = call i32 @i40iw_disable_irq(%struct.i40iw_sc_dev* %20, %struct.i40iw_msix_vector* %21, i8* %23)
  %25 = load %struct.i40iw_device*, %struct.i40iw_device** %2, align 8
  %26 = load %struct.i40iw_ceq*, %struct.i40iw_ceq** %5, align 8
  %27 = call i32 @i40iw_destroy_ceq(%struct.i40iw_device* %25, %struct.i40iw_ceq* %26)
  %28 = load %struct.i40iw_ceq*, %struct.i40iw_ceq** %5, align 8
  %29 = getelementptr inbounds %struct.i40iw_ceq, %struct.i40iw_ceq* %28, i32 1
  store %struct.i40iw_ceq* %29, %struct.i40iw_ceq** %5, align 8
  %30 = load i64, i64* %3, align 8
  %31 = add nsw i64 %30, 1
  store i64 %31, i64* %3, align 8
  br label %32

32:                                               ; preds = %19, %1
  %33 = load %struct.i40iw_msix_vector*, %struct.i40iw_msix_vector** %6, align 8
  %34 = getelementptr inbounds %struct.i40iw_msix_vector, %struct.i40iw_msix_vector* %33, i32 1
  store %struct.i40iw_msix_vector* %34, %struct.i40iw_msix_vector** %6, align 8
  br label %35

35:                                               ; preds = %50, %32
  %36 = load i64, i64* %3, align 8
  %37 = load %struct.i40iw_device*, %struct.i40iw_device** %2, align 8
  %38 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp slt i64 %36, %39
  br i1 %40, label %41, label %57

41:                                               ; preds = %35
  %42 = load %struct.i40iw_sc_dev*, %struct.i40iw_sc_dev** %4, align 8
  %43 = load %struct.i40iw_msix_vector*, %struct.i40iw_msix_vector** %6, align 8
  %44 = load %struct.i40iw_ceq*, %struct.i40iw_ceq** %5, align 8
  %45 = bitcast %struct.i40iw_ceq* %44 to i8*
  %46 = call i32 @i40iw_disable_irq(%struct.i40iw_sc_dev* %42, %struct.i40iw_msix_vector* %43, i8* %45)
  %47 = load %struct.i40iw_device*, %struct.i40iw_device** %2, align 8
  %48 = load %struct.i40iw_ceq*, %struct.i40iw_ceq** %5, align 8
  %49 = call i32 @i40iw_destroy_ceq(%struct.i40iw_device* %47, %struct.i40iw_ceq* %48)
  br label %50

50:                                               ; preds = %41
  %51 = load i64, i64* %3, align 8
  %52 = add nsw i64 %51, 1
  store i64 %52, i64* %3, align 8
  %53 = load %struct.i40iw_msix_vector*, %struct.i40iw_msix_vector** %6, align 8
  %54 = getelementptr inbounds %struct.i40iw_msix_vector, %struct.i40iw_msix_vector* %53, i32 1
  store %struct.i40iw_msix_vector* %54, %struct.i40iw_msix_vector** %6, align 8
  %55 = load %struct.i40iw_ceq*, %struct.i40iw_ceq** %5, align 8
  %56 = getelementptr inbounds %struct.i40iw_ceq, %struct.i40iw_ceq* %55, i32 1
  store %struct.i40iw_ceq* %56, %struct.i40iw_ceq** %5, align 8
  br label %35

57:                                               ; preds = %35
  %58 = load %struct.i40iw_device*, %struct.i40iw_device** %2, align 8
  %59 = getelementptr inbounds %struct.i40iw_device, %struct.i40iw_device* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.i40iw_sc_dev, %struct.i40iw_sc_dev* %59, i32 0, i32 0
  store i32 0, i32* %60, align 8
  ret void
}

declare dso_local i32 @i40iw_disable_irq(%struct.i40iw_sc_dev*, %struct.i40iw_msix_vector*, i8*) #1

declare dso_local i32 @i40iw_destroy_ceq(%struct.i40iw_device*, %struct.i40iw_ceq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
