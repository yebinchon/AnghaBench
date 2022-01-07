; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-rb.c_clean_wctx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-rb.c_clean_wctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk_w_ctx = type { i32, i32, i32 }

@PBLK_SUBMITTED_ENTRY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"pblk: overwriting unsubmitted data\0A\00", align 1
@PBLK_WRITABLE_ENTRY = common dso_local global i32 0, align 4
@ADDR_EMPTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pblk_w_ctx*)* @clean_wctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clean_wctx(%struct.pblk_w_ctx* %0) #0 {
  %2 = alloca %struct.pblk_w_ctx*, align 8
  %3 = alloca i32, align 4
  store %struct.pblk_w_ctx* %0, %struct.pblk_w_ctx** %2, align 8
  %4 = load %struct.pblk_w_ctx*, %struct.pblk_w_ctx** %2, align 8
  %5 = getelementptr inbounds %struct.pblk_w_ctx, %struct.pblk_w_ctx* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @READ_ONCE(i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @PBLK_SUBMITTED_ENTRY, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @WARN_ONCE(i32 %13, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.pblk_w_ctx*, %struct.pblk_w_ctx** %2, align 8
  %16 = getelementptr inbounds %struct.pblk_w_ctx, %struct.pblk_w_ctx* %15, i32 0, i32 2
  %17 = load i32, i32* @PBLK_WRITABLE_ENTRY, align 4
  %18 = call i32 @smp_store_release(i32* %16, i32 %17)
  %19 = load %struct.pblk_w_ctx*, %struct.pblk_w_ctx** %2, align 8
  %20 = getelementptr inbounds %struct.pblk_w_ctx, %struct.pblk_w_ctx* %19, i32 0, i32 1
  %21 = call i32 @pblk_ppa_set_empty(i32* %20)
  %22 = load i32, i32* @ADDR_EMPTY, align 4
  %23 = load %struct.pblk_w_ctx*, %struct.pblk_w_ctx** %2, align 8
  %24 = getelementptr inbounds %struct.pblk_w_ctx, %struct.pblk_w_ctx* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  ret void
}

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*) #1

declare dso_local i32 @smp_store_release(i32*, i32) #1

declare dso_local i32 @pblk_ppa_set_empty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
