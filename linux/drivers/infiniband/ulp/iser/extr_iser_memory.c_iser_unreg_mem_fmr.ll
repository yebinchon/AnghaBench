; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iser_memory.c_iser_unreg_mem_fmr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iser_memory.c_iser_unreg_mem_fmr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_iser_task = type { %struct.iser_mem_reg* }
%struct.iser_mem_reg = type { i32* }
%struct.ib_pool_fmr = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"PHYSICAL Mem.Unregister mem_h %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iser_unreg_mem_fmr(%struct.iscsi_iser_task* %0, i32 %1) #0 {
  %3 = alloca %struct.iscsi_iser_task*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iser_mem_reg*, align 8
  store %struct.iscsi_iser_task* %0, %struct.iscsi_iser_task** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.iscsi_iser_task*, %struct.iscsi_iser_task** %3, align 8
  %7 = getelementptr inbounds %struct.iscsi_iser_task, %struct.iscsi_iser_task* %6, i32 0, i32 0
  %8 = load %struct.iser_mem_reg*, %struct.iser_mem_reg** %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.iser_mem_reg, %struct.iser_mem_reg* %8, i64 %10
  store %struct.iser_mem_reg* %11, %struct.iser_mem_reg** %5, align 8
  %12 = load %struct.iser_mem_reg*, %struct.iser_mem_reg** %5, align 8
  %13 = getelementptr inbounds %struct.iser_mem_reg, %struct.iser_mem_reg* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %29

17:                                               ; preds = %2
  %18 = load %struct.iser_mem_reg*, %struct.iser_mem_reg** %5, align 8
  %19 = getelementptr inbounds %struct.iser_mem_reg, %struct.iser_mem_reg* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @iser_dbg(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32* %20)
  %22 = load %struct.iser_mem_reg*, %struct.iser_mem_reg** %5, align 8
  %23 = getelementptr inbounds %struct.iser_mem_reg, %struct.iser_mem_reg* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = bitcast i32* %24 to %struct.ib_pool_fmr*
  %26 = call i32 @ib_fmr_pool_unmap(%struct.ib_pool_fmr* %25)
  %27 = load %struct.iser_mem_reg*, %struct.iser_mem_reg** %5, align 8
  %28 = getelementptr inbounds %struct.iser_mem_reg, %struct.iser_mem_reg* %27, i32 0, i32 0
  store i32* null, i32** %28, align 8
  br label %29

29:                                               ; preds = %17, %16
  ret void
}

declare dso_local i32 @iser_dbg(i8*, i32*) #1

declare dso_local i32 @ib_fmr_pool_unmap(%struct.ib_pool_fmr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
