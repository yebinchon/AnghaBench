; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe.c_rxe_init_ports.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/rxe/extr_rxe.c_rxe_init_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxe_dev = type { %struct.TYPE_3__*, %struct.rxe_port }
%struct.TYPE_3__ = type { i32 }
%struct.rxe_port = type { i32*, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rxe_dev*)* @rxe_init_ports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rxe_init_ports(%struct.rxe_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rxe_dev*, align 8
  %4 = alloca %struct.rxe_port*, align 8
  store %struct.rxe_dev* %0, %struct.rxe_dev** %3, align 8
  %5 = load %struct.rxe_dev*, %struct.rxe_dev** %3, align 8
  %6 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %5, i32 0, i32 1
  store %struct.rxe_port* %6, %struct.rxe_port** %4, align 8
  %7 = load %struct.rxe_port*, %struct.rxe_port** %4, align 8
  %8 = call i32 @rxe_init_port_param(%struct.rxe_port* %7)
  %9 = load %struct.rxe_port*, %struct.rxe_port** %4, align 8
  %10 = getelementptr inbounds %struct.rxe_port, %struct.rxe_port* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.rxe_port*, %struct.rxe_port** %4, align 8
  %16 = getelementptr inbounds %struct.rxe_port, %struct.rxe_port* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %14, %1
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %56

23:                                               ; preds = %14
  %24 = load %struct.rxe_port*, %struct.rxe_port** %4, align 8
  %25 = getelementptr inbounds %struct.rxe_port, %struct.rxe_port* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call i32* @kcalloc(i32 %27, i32 4, i32 %28)
  %30 = load %struct.rxe_port*, %struct.rxe_port** %4, align 8
  %31 = getelementptr inbounds %struct.rxe_port, %struct.rxe_port* %30, i32 0, i32 0
  store i32* %29, i32** %31, align 8
  %32 = load %struct.rxe_port*, %struct.rxe_port** %4, align 8
  %33 = getelementptr inbounds %struct.rxe_port, %struct.rxe_port* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %23
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %56

39:                                               ; preds = %23
  %40 = load %struct.rxe_port*, %struct.rxe_port** %4, align 8
  %41 = getelementptr inbounds %struct.rxe_port, %struct.rxe_port* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  store i32 65535, i32* %43, align 4
  %44 = load %struct.rxe_port*, %struct.rxe_port** %4, align 8
  %45 = getelementptr inbounds %struct.rxe_port, %struct.rxe_port* %44, i32 0, i32 2
  %46 = bitcast i32* %45 to i8*
  %47 = load %struct.rxe_dev*, %struct.rxe_dev** %3, align 8
  %48 = getelementptr inbounds %struct.rxe_dev, %struct.rxe_dev* %47, i32 0, i32 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @addrconf_addr_eui48(i8* %46, i32 %51)
  %53 = load %struct.rxe_port*, %struct.rxe_port** %4, align 8
  %54 = getelementptr inbounds %struct.rxe_port, %struct.rxe_port* %53, i32 0, i32 1
  %55 = call i32 @spin_lock_init(i32* %54)
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %39, %36, %20
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @rxe_init_port_param(%struct.rxe_port*) #1

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @addrconf_addr_eui48(i8*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
