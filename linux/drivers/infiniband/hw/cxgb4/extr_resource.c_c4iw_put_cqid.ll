; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_resource.c_c4iw_put_cqid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb4/extr_resource.c_c4iw_put_cqid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c4iw_rdev = type { i32 }
%struct.c4iw_dev_ucontext = type { i32, i32 }
%struct.c4iw_qid_list = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"qid 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @c4iw_put_cqid(%struct.c4iw_rdev* %0, i32 %1, %struct.c4iw_dev_ucontext* %2) #0 {
  %4 = alloca %struct.c4iw_rdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.c4iw_dev_ucontext*, align 8
  %7 = alloca %struct.c4iw_qid_list*, align 8
  store %struct.c4iw_rdev* %0, %struct.c4iw_rdev** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.c4iw_dev_ucontext* %2, %struct.c4iw_dev_ucontext** %6, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.c4iw_qid_list* @kmalloc(i32 8, i32 %8)
  store %struct.c4iw_qid_list* %9, %struct.c4iw_qid_list** %7, align 8
  %10 = load %struct.c4iw_qid_list*, %struct.c4iw_qid_list** %7, align 8
  %11 = icmp ne %struct.c4iw_qid_list* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  br label %30

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @pr_debug(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.c4iw_qid_list*, %struct.c4iw_qid_list** %7, align 8
  %18 = getelementptr inbounds %struct.c4iw_qid_list, %struct.c4iw_qid_list* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load %struct.c4iw_dev_ucontext*, %struct.c4iw_dev_ucontext** %6, align 8
  %20 = getelementptr inbounds %struct.c4iw_dev_ucontext, %struct.c4iw_dev_ucontext* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.c4iw_qid_list*, %struct.c4iw_qid_list** %7, align 8
  %23 = getelementptr inbounds %struct.c4iw_qid_list, %struct.c4iw_qid_list* %22, i32 0, i32 0
  %24 = load %struct.c4iw_dev_ucontext*, %struct.c4iw_dev_ucontext** %6, align 8
  %25 = getelementptr inbounds %struct.c4iw_dev_ucontext, %struct.c4iw_dev_ucontext* %24, i32 0, i32 1
  %26 = call i32 @list_add_tail(i32* %23, i32* %25)
  %27 = load %struct.c4iw_dev_ucontext*, %struct.c4iw_dev_ucontext** %6, align 8
  %28 = getelementptr inbounds %struct.c4iw_dev_ucontext, %struct.c4iw_dev_ucontext* %27, i32 0, i32 0
  %29 = call i32 @mutex_unlock(i32* %28)
  br label %30

30:                                               ; preds = %13, %12
  ret void
}

declare dso_local %struct.c4iw_qid_list* @kmalloc(i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
