; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_cmdbuf_res.c_vmw_cmdbuf_res_man_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vmwgfx/extr_vmwgfx_cmdbuf_res.c_vmw_cmdbuf_res_man_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vmw_cmdbuf_res_man_size.res_man_size = internal global i64 0, align 8
@VMW_CMDBUF_RES_MAN_HT_ORDER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @vmw_cmdbuf_res_man_size() #0 {
  %1 = load i64, i64* @vmw_cmdbuf_res_man_size.res_man_size, align 8
  %2 = icmp eq i64 %1, 0
  %3 = zext i1 %2 to i32
  %4 = call i64 @unlikely(i32 %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %14

6:                                                ; preds = %0
  %7 = call i64 @ttm_round_pot(i32 4)
  %8 = load i32, i32* @VMW_CMDBUF_RES_MAN_HT_ORDER, align 4
  %9 = zext i32 %8 to i64
  %10 = shl i64 4, %9
  %11 = trunc i64 %10 to i32
  %12 = call i64 @ttm_round_pot(i32 %11)
  %13 = add i64 %7, %12
  store i64 %13, i64* @vmw_cmdbuf_res_man_size.res_man_size, align 8
  br label %14

14:                                               ; preds = %6, %0
  %15 = load i64, i64* @vmw_cmdbuf_res_man_size.res_man_size, align 8
  ret i64 %15
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @ttm_round_pot(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
