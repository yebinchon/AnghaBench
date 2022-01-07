; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-stripe.c_alloc_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-stripe.c_alloc_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stripe_c = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.stripe_c* (i32)* @alloc_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.stripe_c* @alloc_context(i32 %0) #0 {
  %2 = alloca %struct.stripe_c*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i64 @dm_array_too_big(i32 4, i32 4, i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store %struct.stripe_c* null, %struct.stripe_c** %2, align 8
  br label %17

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = zext i32 %10 to i64
  %12 = mul i64 4, %11
  %13 = add i64 4, %12
  store i64 %13, i64* %4, align 8
  %14 = load i64, i64* %4, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.stripe_c* @kmalloc(i64 %14, i32 %15)
  store %struct.stripe_c* %16, %struct.stripe_c** %2, align 8
  br label %17

17:                                               ; preds = %9, %8
  %18 = load %struct.stripe_c*, %struct.stripe_c** %2, align 8
  ret %struct.stripe_c* %18
}

declare dso_local i64 @dm_array_too_big(i32, i32, i32) #1

declare dso_local %struct.stripe_c* @kmalloc(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
