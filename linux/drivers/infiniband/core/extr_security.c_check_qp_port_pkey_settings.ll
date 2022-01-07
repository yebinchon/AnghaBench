; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_security.c_check_qp_port_pkey_settings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_security.c_check_qp_port_pkey_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_ports_pkeys = type { %struct.TYPE_2__, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.ib_qp_security = type { i32 }

@IB_PORT_PKEY_NOT_VALID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_ports_pkeys*, %struct.ib_qp_security*)* @check_qp_port_pkey_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_qp_port_pkey_settings(%struct.ib_ports_pkeys* %0, %struct.ib_qp_security* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_ports_pkeys*, align 8
  %5 = alloca %struct.ib_qp_security*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ib_ports_pkeys* %0, %struct.ib_ports_pkeys** %4, align 8
  store %struct.ib_qp_security* %1, %struct.ib_qp_security** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.ib_ports_pkeys*, %struct.ib_ports_pkeys** %4, align 8
  %10 = icmp ne %struct.ib_ports_pkeys* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %59

12:                                               ; preds = %2
  %13 = load %struct.ib_ports_pkeys*, %struct.ib_ports_pkeys** %4, align 8
  %14 = getelementptr inbounds %struct.ib_ports_pkeys, %struct.ib_ports_pkeys* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @IB_PORT_PKEY_NOT_VALID, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %37

19:                                               ; preds = %12
  %20 = load %struct.ib_ports_pkeys*, %struct.ib_ports_pkeys** %4, align 8
  %21 = getelementptr inbounds %struct.ib_ports_pkeys, %struct.ib_ports_pkeys* %20, i32 0, i32 1
  %22 = call i32 @get_pkey_and_subnet_prefix(%struct.TYPE_2__* %21, i32* %7, i32* %6)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %3, align 4
  br label %59

27:                                               ; preds = %19
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.ib_qp_security*, %struct.ib_qp_security** %5, align 8
  %31 = call i32 @enforce_qp_pkey_security(i32 %28, i32 %29, %struct.ib_qp_security* %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %3, align 4
  br label %59

36:                                               ; preds = %27
  br label %37

37:                                               ; preds = %36, %12
  %38 = load %struct.ib_ports_pkeys*, %struct.ib_ports_pkeys** %4, align 8
  %39 = getelementptr inbounds %struct.ib_ports_pkeys, %struct.ib_ports_pkeys* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @IB_PORT_PKEY_NOT_VALID, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %57

44:                                               ; preds = %37
  %45 = load %struct.ib_ports_pkeys*, %struct.ib_ports_pkeys** %4, align 8
  %46 = getelementptr inbounds %struct.ib_ports_pkeys, %struct.ib_ports_pkeys* %45, i32 0, i32 0
  %47 = call i32 @get_pkey_and_subnet_prefix(%struct.TYPE_2__* %46, i32* %7, i32* %6)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %3, align 4
  br label %59

52:                                               ; preds = %44
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.ib_qp_security*, %struct.ib_qp_security** %5, align 8
  %56 = call i32 @enforce_qp_pkey_security(i32 %53, i32 %54, %struct.ib_qp_security* %55)
  store i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %52, %37
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %57, %50, %34, %25, %11
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @get_pkey_and_subnet_prefix(%struct.TYPE_2__*, i32*, i32*) #1

declare dso_local i32 @enforce_qp_pkey_security(i32, i32, %struct.ib_qp_security*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
