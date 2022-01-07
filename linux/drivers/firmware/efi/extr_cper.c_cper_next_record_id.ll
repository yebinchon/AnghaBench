; ModuleID = '/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_cper.c_cper_next_record_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firmware/efi/extr_cper.c_cper_next_record_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cper_next_record_id.seq = internal global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cper_next_record_id() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @atomic64_read(i32* @cper_next_record_id.seq)
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %20, label %4

4:                                                ; preds = %0
  %5 = call i32 (...) @ktime_get_real_seconds()
  store i32 %5, i32* %1, align 4
  %6 = load i32, i32* %1, align 4
  %7 = icmp ult i32 %6, -2147483648
  br i1 %7, label %8, label %12

8:                                                ; preds = %4
  %9 = call i32 (...) @ktime_get_real_seconds()
  %10 = shl i32 %9, 32
  %11 = call i32 @atomic64_set(i32* @cper_next_record_id.seq, i32 %10)
  br label %19

12:                                               ; preds = %4
  %13 = call i32 (...) @ktime_get_real_seconds()
  %14 = shl i32 %13, 24
  %15 = sext i32 %14 to i64
  %16 = or i64 -9223372036854775808, %15
  %17 = trunc i64 %16 to i32
  %18 = call i32 @atomic64_set(i32* @cper_next_record_id.seq, i32 %17)
  br label %19

19:                                               ; preds = %12, %8
  br label %20

20:                                               ; preds = %19, %0
  %21 = call i32 @atomic64_inc_return(i32* @cper_next_record_id.seq)
  ret i32 %21
}

declare dso_local i32 @atomic64_read(i32*) #1

declare dso_local i32 @ktime_get_real_seconds(...) #1

declare dso_local i32 @atomic64_set(i32*, i32) #1

declare dso_local i32 @atomic64_inc_return(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
