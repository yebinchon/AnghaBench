; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-rb.c_pblk_rb_w_ctx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-rb.c_pblk_rb_w_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk_w_ctx = type { i32 }
%struct.pblk_rb = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.pblk_w_ctx }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pblk_w_ctx* @pblk_rb_w_ctx(%struct.pblk_rb* %0, i32 %1) #0 {
  %3 = alloca %struct.pblk_rb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pblk_rb* %0, %struct.pblk_rb** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.pblk_rb*, %struct.pblk_rb** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @pblk_rb_ptr_wrap(%struct.pblk_rb* %6, i32 %7, i32 0)
  store i32 %8, i32* %5, align 4
  %9 = load %struct.pblk_rb*, %struct.pblk_rb** %3, align 8
  %10 = getelementptr inbounds %struct.pblk_rb, %struct.pblk_rb* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  ret %struct.pblk_w_ctx* %15
}

declare dso_local i32 @pblk_rb_ptr_wrap(%struct.pblk_rb*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
