; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_com.c_efa_com_get_comp_ctx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/efa/extr_efa_com.c_efa_com_get_comp_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efa_comp_ctx = type { i32 }
%struct.efa_com_admin_queue = type { i32, %struct.efa_comp_ctx*, i32 }

@.str = private unnamed_addr constant [51 x i8] c"Completion context for command_id %#x is occupied\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Take completion ctxt for command_id %#x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.efa_comp_ctx* (%struct.efa_com_admin_queue*, i32, i32)* @efa_com_get_comp_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.efa_comp_ctx* @efa_com_get_comp_ctx(%struct.efa_com_admin_queue* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.efa_comp_ctx*, align 8
  %5 = alloca %struct.efa_com_admin_queue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.efa_com_admin_queue* %0, %struct.efa_com_admin_queue** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.efa_com_admin_queue*, %struct.efa_com_admin_queue** %5, align 8
  %11 = getelementptr inbounds %struct.efa_com_admin_queue, %struct.efa_com_admin_queue* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = sub nsw i32 %12, 1
  %14 = and i32 %9, %13
  store i32 %14, i32* %8, align 4
  %15 = load %struct.efa_com_admin_queue*, %struct.efa_com_admin_queue** %5, align 8
  %16 = getelementptr inbounds %struct.efa_com_admin_queue, %struct.efa_com_admin_queue* %15, i32 0, i32 1
  %17 = load %struct.efa_comp_ctx*, %struct.efa_comp_ctx** %16, align 8
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.efa_comp_ctx, %struct.efa_comp_ctx* %17, i64 %19
  %21 = getelementptr inbounds %struct.efa_comp_ctx, %struct.efa_comp_ctx* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %3
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load %struct.efa_com_admin_queue*, %struct.efa_com_admin_queue** %5, align 8
  %29 = getelementptr inbounds %struct.efa_com_admin_queue, %struct.efa_com_admin_queue* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @ibdev_err_ratelimited(i32 %30, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %31)
  store %struct.efa_comp_ctx* null, %struct.efa_comp_ctx** %4, align 8
  br label %56

33:                                               ; preds = %24, %3
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %33
  %37 = load %struct.efa_com_admin_queue*, %struct.efa_com_admin_queue** %5, align 8
  %38 = getelementptr inbounds %struct.efa_com_admin_queue, %struct.efa_com_admin_queue* %37, i32 0, i32 1
  %39 = load %struct.efa_comp_ctx*, %struct.efa_comp_ctx** %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.efa_comp_ctx, %struct.efa_comp_ctx* %39, i64 %41
  %43 = getelementptr inbounds %struct.efa_comp_ctx, %struct.efa_comp_ctx* %42, i32 0, i32 0
  store i32 1, i32* %43, align 4
  %44 = load %struct.efa_com_admin_queue*, %struct.efa_com_admin_queue** %5, align 8
  %45 = getelementptr inbounds %struct.efa_com_admin_queue, %struct.efa_com_admin_queue* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @ibdev_dbg(i32 %46, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %36, %33
  %50 = load %struct.efa_com_admin_queue*, %struct.efa_com_admin_queue** %5, align 8
  %51 = getelementptr inbounds %struct.efa_com_admin_queue, %struct.efa_com_admin_queue* %50, i32 0, i32 1
  %52 = load %struct.efa_comp_ctx*, %struct.efa_comp_ctx** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.efa_comp_ctx, %struct.efa_comp_ctx* %52, i64 %54
  store %struct.efa_comp_ctx* %55, %struct.efa_comp_ctx** %4, align 8
  br label %56

56:                                               ; preds = %49, %27
  %57 = load %struct.efa_comp_ctx*, %struct.efa_comp_ctx** %4, align 8
  ret %struct.efa_comp_ctx* %57
}

declare dso_local i32 @ibdev_err_ratelimited(i32, i8*, i32) #1

declare dso_local i32 @ibdev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
