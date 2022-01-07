; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/siano/extr_smscoreapi.c_smscore_unregister_client.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/siano/extr_smscoreapi.c_smscore_unregister_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smscore_client_t = type { i32, i32, %struct.TYPE_2__, %struct.smscore_device_t* }
%struct.TYPE_2__ = type { i64 }
%struct.smscore_device_t = type { i32 }
%struct.smscore_idlist_t = type { i32, i32, %struct.TYPE_2__, %struct.smscore_device_t* }

@.str = private unnamed_addr constant [4 x i8] c"%p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smscore_unregister_client(%struct.smscore_client_t* %0) #0 {
  %2 = alloca %struct.smscore_client_t*, align 8
  %3 = alloca %struct.smscore_device_t*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.smscore_idlist_t*, align 8
  store %struct.smscore_client_t* %0, %struct.smscore_client_t** %2, align 8
  %6 = load %struct.smscore_client_t*, %struct.smscore_client_t** %2, align 8
  %7 = getelementptr inbounds %struct.smscore_client_t, %struct.smscore_client_t* %6, i32 0, i32 3
  %8 = load %struct.smscore_device_t*, %struct.smscore_device_t** %7, align 8
  store %struct.smscore_device_t* %8, %struct.smscore_device_t** %3, align 8
  %9 = load %struct.smscore_device_t*, %struct.smscore_device_t** %3, align 8
  %10 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %9, i32 0, i32 0
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  br label %13

13:                                               ; preds = %19, %1
  %14 = load %struct.smscore_client_t*, %struct.smscore_client_t** %2, align 8
  %15 = getelementptr inbounds %struct.smscore_client_t, %struct.smscore_client_t* %14, i32 0, i32 2
  %16 = call i32 @list_empty(%struct.TYPE_2__* %15)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  br i1 %18, label %19, label %30

19:                                               ; preds = %13
  %20 = load %struct.smscore_client_t*, %struct.smscore_client_t** %2, align 8
  %21 = getelementptr inbounds %struct.smscore_client_t, %struct.smscore_client_t* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.smscore_idlist_t*
  store %struct.smscore_idlist_t* %24, %struct.smscore_idlist_t** %5, align 8
  %25 = load %struct.smscore_idlist_t*, %struct.smscore_idlist_t** %5, align 8
  %26 = getelementptr inbounds %struct.smscore_idlist_t, %struct.smscore_idlist_t* %25, i32 0, i32 0
  %27 = call i32 @list_del(i32* %26)
  %28 = load %struct.smscore_idlist_t*, %struct.smscore_idlist_t** %5, align 8
  %29 = call i32 @kfree(%struct.smscore_idlist_t* %28)
  br label %13

30:                                               ; preds = %13
  %31 = load %struct.smscore_client_t*, %struct.smscore_client_t** %2, align 8
  %32 = getelementptr inbounds %struct.smscore_client_t, %struct.smscore_client_t* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @pr_debug(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load %struct.smscore_client_t*, %struct.smscore_client_t** %2, align 8
  %36 = getelementptr inbounds %struct.smscore_client_t, %struct.smscore_client_t* %35, i32 0, i32 0
  %37 = call i32 @list_del(i32* %36)
  %38 = load %struct.smscore_client_t*, %struct.smscore_client_t** %2, align 8
  %39 = bitcast %struct.smscore_client_t* %38 to %struct.smscore_idlist_t*
  %40 = call i32 @kfree(%struct.smscore_idlist_t* %39)
  %41 = load %struct.smscore_device_t*, %struct.smscore_device_t** %3, align 8
  %42 = getelementptr inbounds %struct.smscore_device_t, %struct.smscore_device_t* %41, i32 0, i32 0
  %43 = load i64, i64* %4, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* %42, i64 %43)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_empty(%struct.TYPE_2__*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.smscore_idlist_t*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
