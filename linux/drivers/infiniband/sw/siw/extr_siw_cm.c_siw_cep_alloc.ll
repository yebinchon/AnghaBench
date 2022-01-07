; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_cm.c_siw_cep_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_cm.c_siw_cep_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siw_cep = type { i32, i32, %struct.siw_device*, i32, i32, i32, i32, i32, i32 }
%struct.siw_device = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@SIW_EPSTATE_IDLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"new endpoint\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.siw_cep* (%struct.siw_device*)* @siw_cep_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.siw_cep* @siw_cep_alloc(%struct.siw_device* %0) #0 {
  %2 = alloca %struct.siw_cep*, align 8
  %3 = alloca %struct.siw_device*, align 8
  %4 = alloca %struct.siw_cep*, align 8
  %5 = alloca i64, align 8
  store %struct.siw_device* %0, %struct.siw_device** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.siw_cep* @kzalloc(i32 40, i32 %6)
  store %struct.siw_cep* %7, %struct.siw_cep** %4, align 8
  %8 = load %struct.siw_cep*, %struct.siw_cep** %4, align 8
  %9 = icmp ne %struct.siw_cep* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.siw_cep* null, %struct.siw_cep** %2, align 8
  br label %54

11:                                               ; preds = %1
  %12 = load %struct.siw_cep*, %struct.siw_cep** %4, align 8
  %13 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %12, i32 0, i32 8
  %14 = call i32 @INIT_LIST_HEAD(i32* %13)
  %15 = load %struct.siw_cep*, %struct.siw_cep** %4, align 8
  %16 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %15, i32 0, i32 1
  %17 = call i32 @INIT_LIST_HEAD(i32* %16)
  %18 = load %struct.siw_cep*, %struct.siw_cep** %4, align 8
  %19 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %18, i32 0, i32 7
  %20 = call i32 @INIT_LIST_HEAD(i32* %19)
  %21 = load %struct.siw_cep*, %struct.siw_cep** %4, align 8
  %22 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %21, i32 0, i32 6
  %23 = call i32 @kref_init(i32* %22)
  %24 = load i32, i32* @SIW_EPSTATE_IDLE, align 4
  %25 = load %struct.siw_cep*, %struct.siw_cep** %4, align 8
  %26 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %25, i32 0, i32 5
  store i32 %24, i32* %26, align 8
  %27 = load %struct.siw_cep*, %struct.siw_cep** %4, align 8
  %28 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %27, i32 0, i32 4
  %29 = call i32 @init_waitqueue_head(i32* %28)
  %30 = load %struct.siw_cep*, %struct.siw_cep** %4, align 8
  %31 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %30, i32 0, i32 3
  %32 = call i32 @spin_lock_init(i32* %31)
  %33 = load %struct.siw_device*, %struct.siw_device** %3, align 8
  %34 = load %struct.siw_cep*, %struct.siw_cep** %4, align 8
  %35 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %34, i32 0, i32 2
  store %struct.siw_device* %33, %struct.siw_device** %35, align 8
  %36 = load %struct.siw_cep*, %struct.siw_cep** %4, align 8
  %37 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %36, i32 0, i32 0
  store i32 0, i32* %37, align 8
  %38 = load %struct.siw_device*, %struct.siw_device** %3, align 8
  %39 = getelementptr inbounds %struct.siw_device, %struct.siw_device* %38, i32 0, i32 0
  %40 = load i64, i64* %5, align 8
  %41 = call i32 @spin_lock_irqsave(i32* %39, i64 %40)
  %42 = load %struct.siw_cep*, %struct.siw_cep** %4, align 8
  %43 = getelementptr inbounds %struct.siw_cep, %struct.siw_cep* %42, i32 0, i32 1
  %44 = load %struct.siw_device*, %struct.siw_device** %3, align 8
  %45 = getelementptr inbounds %struct.siw_device, %struct.siw_device* %44, i32 0, i32 1
  %46 = call i32 @list_add_tail(i32* %43, i32* %45)
  %47 = load %struct.siw_device*, %struct.siw_device** %3, align 8
  %48 = getelementptr inbounds %struct.siw_device, %struct.siw_device* %47, i32 0, i32 0
  %49 = load i64, i64* %5, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32* %48, i64 %49)
  %51 = load %struct.siw_cep*, %struct.siw_cep** %4, align 8
  %52 = call i32 @siw_dbg_cep(%struct.siw_cep* %51, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %53 = load %struct.siw_cep*, %struct.siw_cep** %4, align 8
  store %struct.siw_cep* %53, %struct.siw_cep** %2, align 8
  br label %54

54:                                               ; preds = %11, %10
  %55 = load %struct.siw_cep*, %struct.siw_cep** %2, align 8
  ret %struct.siw_cep* %55
}

declare dso_local %struct.siw_cep* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @siw_dbg_cep(%struct.siw_cep*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
