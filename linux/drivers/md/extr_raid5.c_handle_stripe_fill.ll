; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_handle_stripe_fill.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_raid5.c_handle_stripe_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stripe_head = type { i32, i32, i32 }
%struct.stripe_head_state = type { i64, i64 }

@STRIPE_COMPUTE_RUN = common dso_local global i32 0, align 4
@STRIPE_R5C_CACHING = common dso_local global i32 0, align 4
@STRIPE_HANDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stripe_head*, %struct.stripe_head_state*, i32)* @handle_stripe_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_stripe_fill(%struct.stripe_head* %0, %struct.stripe_head_state* %1, i32 %2) #0 {
  %4 = alloca %struct.stripe_head*, align 8
  %5 = alloca %struct.stripe_head_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.stripe_head* %0, %struct.stripe_head** %4, align 8
  store %struct.stripe_head_state* %1, %struct.stripe_head_state** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @STRIPE_COMPUTE_RUN, align 4
  %9 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %10 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %9, i32 0, i32 0
  %11 = call i64 @test_bit(i32 %8, i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %59, label %13

13:                                               ; preds = %3
  %14 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %15 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %59, label %18

18:                                               ; preds = %13
  %19 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %20 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %59, label %23

23:                                               ; preds = %18
  %24 = load %struct.stripe_head_state*, %struct.stripe_head_state** %5, align 8
  %25 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %43

28:                                               ; preds = %23
  %29 = load %struct.stripe_head_state*, %struct.stripe_head_state** %5, align 8
  %30 = getelementptr inbounds %struct.stripe_head_state, %struct.stripe_head_state* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %28
  %34 = load i32, i32* @STRIPE_R5C_CACHING, align 4
  %35 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %36 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %35, i32 0, i32 0
  %37 = call i64 @test_bit(i32 %34, i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %41 = call i32 @r5c_make_stripe_write_out(%struct.stripe_head* %40)
  br label %42

42:                                               ; preds = %39, %33
  br label %60

43:                                               ; preds = %28, %23
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %57, %43
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %7, align 4
  %48 = icmp ne i32 %46, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %45
  %50 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %51 = load %struct.stripe_head_state*, %struct.stripe_head_state** %5, align 8
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i64 @fetch_block(%struct.stripe_head* %50, %struct.stripe_head_state* %51, i32 %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  br label %58

57:                                               ; preds = %49
  br label %45

58:                                               ; preds = %56, %45
  br label %59

59:                                               ; preds = %58, %18, %13, %3
  br label %60

60:                                               ; preds = %59, %42
  %61 = load i32, i32* @STRIPE_HANDLE, align 4
  %62 = load %struct.stripe_head*, %struct.stripe_head** %4, align 8
  %63 = getelementptr inbounds %struct.stripe_head, %struct.stripe_head* %62, i32 0, i32 0
  %64 = call i32 @set_bit(i32 %61, i32* %63)
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @r5c_make_stripe_write_out(%struct.stripe_head*) #1

declare dso_local i64 @fetch_block(%struct.stripe_head*, %struct.stripe_head_state*, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
