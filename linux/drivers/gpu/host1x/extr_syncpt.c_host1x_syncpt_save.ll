; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_syncpt.c_host1x_syncpt_save.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/host1x/extr_syncpt.c_host1x_syncpt_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host1x = type { %struct.host1x_syncpt* }
%struct.host1x_syncpt = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @host1x_syncpt_save(%struct.host1x* %0) #0 {
  %2 = alloca %struct.host1x*, align 8
  %3 = alloca %struct.host1x_syncpt*, align 8
  %4 = alloca i32, align 4
  store %struct.host1x* %0, %struct.host1x** %2, align 8
  %5 = load %struct.host1x*, %struct.host1x** %2, align 8
  %6 = getelementptr inbounds %struct.host1x, %struct.host1x* %5, i32 0, i32 0
  %7 = load %struct.host1x_syncpt*, %struct.host1x_syncpt** %6, align 8
  store %struct.host1x_syncpt* %7, %struct.host1x_syncpt** %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %38, %1
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.host1x*, %struct.host1x** %2, align 8
  %11 = call i32 @host1x_syncpt_nb_pts(%struct.host1x* %10)
  %12 = icmp ult i32 %9, %11
  br i1 %12, label %13, label %41

13:                                               ; preds = %8
  %14 = load %struct.host1x_syncpt*, %struct.host1x_syncpt** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.host1x_syncpt, %struct.host1x_syncpt* %14, i64 %16
  %18 = call i64 @host1x_syncpt_client_managed(%struct.host1x_syncpt* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %13
  %21 = load %struct.host1x*, %struct.host1x** %2, align 8
  %22 = load %struct.host1x_syncpt*, %struct.host1x_syncpt** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.host1x_syncpt, %struct.host1x_syncpt* %22, i64 %24
  %26 = call i32 @host1x_hw_syncpt_load(%struct.host1x* %21, %struct.host1x_syncpt* %25)
  br label %37

27:                                               ; preds = %13
  %28 = load %struct.host1x_syncpt*, %struct.host1x_syncpt** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.host1x_syncpt, %struct.host1x_syncpt* %28, i64 %30
  %32 = call i32 @host1x_syncpt_idle(%struct.host1x_syncpt* %31)
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i32 @WARN_ON(i32 %35)
  br label %37

37:                                               ; preds = %27, %20
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %4, align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* %4, align 4
  br label %8

41:                                               ; preds = %8
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %54, %41
  %43 = load i32, i32* %4, align 4
  %44 = load %struct.host1x*, %struct.host1x** %2, align 8
  %45 = call i32 @host1x_syncpt_nb_bases(%struct.host1x* %44)
  %46 = icmp ult i32 %43, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %42
  %48 = load %struct.host1x*, %struct.host1x** %2, align 8
  %49 = load %struct.host1x_syncpt*, %struct.host1x_syncpt** %3, align 8
  %50 = load i32, i32* %4, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.host1x_syncpt, %struct.host1x_syncpt* %49, i64 %51
  %53 = call i32 @host1x_hw_syncpt_load_wait_base(%struct.host1x* %48, %struct.host1x_syncpt* %52)
  br label %54

54:                                               ; preds = %47
  %55 = load i32, i32* %4, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %4, align 4
  br label %42

57:                                               ; preds = %42
  ret void
}

declare dso_local i32 @host1x_syncpt_nb_pts(%struct.host1x*) #1

declare dso_local i64 @host1x_syncpt_client_managed(%struct.host1x_syncpt*) #1

declare dso_local i32 @host1x_hw_syncpt_load(%struct.host1x*, %struct.host1x_syncpt*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @host1x_syncpt_idle(%struct.host1x_syncpt*) #1

declare dso_local i32 @host1x_syncpt_nb_bases(%struct.host1x*) #1

declare dso_local i32 @host1x_hw_syncpt_load_wait_base(%struct.host1x*, %struct.host1x_syncpt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
