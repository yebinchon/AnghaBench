; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_iw_cxgb4.h_c4iw_ref_send_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_iw_cxgb4.h_c4iw_ref_send_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c4iw_rdev = type { i32 }
%struct.sk_buff = type { i32 }
%struct.c4iw_wr_wait = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"%s wr_wait %p hwtid %u qpid %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.c4iw_rdev*, %struct.sk_buff*, %struct.c4iw_wr_wait*, i32, i32, i8*)* @c4iw_ref_send_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @c4iw_ref_send_wait(%struct.c4iw_rdev* %0, %struct.sk_buff* %1, %struct.c4iw_wr_wait* %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.c4iw_rdev*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.c4iw_wr_wait*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.c4iw_rdev* %0, %struct.c4iw_rdev** %8, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %9, align 8
  store %struct.c4iw_wr_wait* %2, %struct.c4iw_wr_wait** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %15 = load i8*, i8** %13, align 8
  %16 = load %struct.c4iw_wr_wait*, %struct.c4iw_wr_wait** %10, align 8
  %17 = load i32, i32* %11, align 4
  %18 = load i32, i32* %12, align 4
  %19 = call i32 @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %15, %struct.c4iw_wr_wait* %16, i32 %17, i32 %18)
  %20 = load %struct.c4iw_wr_wait*, %struct.c4iw_wr_wait** %10, align 8
  %21 = call i32 @c4iw_get_wr_wait(%struct.c4iw_wr_wait* %20)
  %22 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %8, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %24 = call i32 @c4iw_ofld_send(%struct.c4iw_rdev* %22, %struct.sk_buff* %23)
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* %14, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %6
  %28 = load %struct.c4iw_wr_wait*, %struct.c4iw_wr_wait** %10, align 8
  %29 = call i32 @c4iw_put_wr_wait(%struct.c4iw_wr_wait* %28)
  %30 = load i32, i32* %14, align 4
  store i32 %30, i32* %7, align 4
  br label %38

31:                                               ; preds = %6
  %32 = load %struct.c4iw_rdev*, %struct.c4iw_rdev** %8, align 8
  %33 = load %struct.c4iw_wr_wait*, %struct.c4iw_wr_wait** %10, align 8
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %12, align 4
  %36 = load i8*, i8** %13, align 8
  %37 = call i32 @c4iw_wait_for_reply(%struct.c4iw_rdev* %32, %struct.c4iw_wr_wait* %33, i32 %34, i32 %35, i8* %36)
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %31, %27
  %39 = load i32, i32* %7, align 4
  ret i32 %39
}

declare dso_local i32 @pr_debug(i8*, i8*, %struct.c4iw_wr_wait*, i32, i32) #1

declare dso_local i32 @c4iw_get_wr_wait(%struct.c4iw_wr_wait*) #1

declare dso_local i32 @c4iw_ofld_send(%struct.c4iw_rdev*, %struct.sk_buff*) #1

declare dso_local i32 @c4iw_put_wr_wait(%struct.c4iw_wr_wait*) #1

declare dso_local i32 @c4iw_wait_for_reply(%struct.c4iw_rdev*, %struct.c4iw_wr_wait*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
