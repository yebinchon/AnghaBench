; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/cec/extr_cec-notifier.c_cec_notifier_cec_adap_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/cec/extr_cec-notifier.c_cec_notifier_cec_adap_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cec_notifier = type { i32, i32, i32, %struct.cec_adapter* }
%struct.device = type { i32 }
%struct.cec_adapter = type { %struct.cec_notifier*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cec_notifier* @cec_notifier_cec_adap_register(%struct.device* %0, i8* %1, %struct.cec_adapter* %2) #0 {
  %4 = alloca %struct.cec_notifier*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.cec_adapter*, align 8
  %8 = alloca %struct.cec_notifier*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.cec_adapter* %2, %struct.cec_adapter** %7, align 8
  %9 = load %struct.cec_adapter*, %struct.cec_adapter** %7, align 8
  %10 = icmp ne %struct.cec_adapter* %9, null
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i64 @WARN_ON(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store %struct.cec_notifier* null, %struct.cec_notifier** %4, align 8
  br label %48

16:                                               ; preds = %3
  %17 = load %struct.device*, %struct.device** %5, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = call %struct.cec_notifier* @cec_notifier_get_conn(%struct.device* %17, i8* %18)
  store %struct.cec_notifier* %19, %struct.cec_notifier** %8, align 8
  %20 = load %struct.cec_notifier*, %struct.cec_notifier** %8, align 8
  %21 = icmp ne %struct.cec_notifier* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %16
  %23 = load %struct.cec_notifier*, %struct.cec_notifier** %8, align 8
  store %struct.cec_notifier* %23, %struct.cec_notifier** %4, align 8
  br label %48

24:                                               ; preds = %16
  %25 = load %struct.cec_notifier*, %struct.cec_notifier** %8, align 8
  %26 = getelementptr inbounds %struct.cec_notifier, %struct.cec_notifier* %25, i32 0, i32 0
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.cec_adapter*, %struct.cec_adapter** %7, align 8
  %29 = load %struct.cec_notifier*, %struct.cec_notifier** %8, align 8
  %30 = getelementptr inbounds %struct.cec_notifier, %struct.cec_notifier* %29, i32 0, i32 3
  store %struct.cec_adapter* %28, %struct.cec_adapter** %30, align 8
  %31 = load %struct.cec_notifier*, %struct.cec_notifier** %8, align 8
  %32 = getelementptr inbounds %struct.cec_notifier, %struct.cec_notifier* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.cec_adapter*, %struct.cec_adapter** %7, align 8
  %35 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  %36 = load %struct.cec_notifier*, %struct.cec_notifier** %8, align 8
  %37 = load %struct.cec_adapter*, %struct.cec_adapter** %7, align 8
  %38 = getelementptr inbounds %struct.cec_adapter, %struct.cec_adapter* %37, i32 0, i32 0
  store %struct.cec_notifier* %36, %struct.cec_notifier** %38, align 8
  %39 = load %struct.cec_adapter*, %struct.cec_adapter** %7, align 8
  %40 = load %struct.cec_notifier*, %struct.cec_notifier** %8, align 8
  %41 = getelementptr inbounds %struct.cec_notifier, %struct.cec_notifier* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @cec_s_phys_addr(%struct.cec_adapter* %39, i32 %42, i32 0)
  %44 = load %struct.cec_notifier*, %struct.cec_notifier** %8, align 8
  %45 = getelementptr inbounds %struct.cec_notifier, %struct.cec_notifier* %44, i32 0, i32 0
  %46 = call i32 @mutex_unlock(i32* %45)
  %47 = load %struct.cec_notifier*, %struct.cec_notifier** %8, align 8
  store %struct.cec_notifier* %47, %struct.cec_notifier** %4, align 8
  br label %48

48:                                               ; preds = %24, %22, %15
  %49 = load %struct.cec_notifier*, %struct.cec_notifier** %4, align 8
  ret %struct.cec_notifier* %49
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.cec_notifier* @cec_notifier_get_conn(%struct.device*, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cec_s_phys_addr(%struct.cec_adapter*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
