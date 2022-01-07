; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-integrity.c_complete_journal_encrypt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-integrity.c_complete_journal_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_async_request = type { %struct.journal_completion* }
%struct.journal_completion = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINPROGRESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"asynchronous encrypt\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crypto_async_request*, i32)* @complete_journal_encrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @complete_journal_encrypt(%struct.crypto_async_request* %0, i32 %1) #0 {
  %3 = alloca %struct.crypto_async_request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.journal_completion*, align 8
  store %struct.crypto_async_request* %0, %struct.crypto_async_request** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.crypto_async_request*, %struct.crypto_async_request** %3, align 8
  %7 = getelementptr inbounds %struct.crypto_async_request, %struct.crypto_async_request* %6, i32 0, i32 0
  %8 = load %struct.journal_completion*, %struct.journal_completion** %7, align 8
  store %struct.journal_completion* %8, %struct.journal_completion** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i64 @unlikely(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %32

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @EINPROGRESS, align 4
  %15 = sub nsw i32 0, %14
  %16 = icmp eq i32 %13, %15
  %17 = zext i1 %16 to i32
  %18 = call i64 @likely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %12
  %21 = load %struct.journal_completion*, %struct.journal_completion** %5, align 8
  %22 = getelementptr inbounds %struct.journal_completion, %struct.journal_completion* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @complete(i32* %24)
  br label %35

26:                                               ; preds = %12
  %27 = load %struct.journal_completion*, %struct.journal_completion** %5, align 8
  %28 = getelementptr inbounds %struct.journal_completion, %struct.journal_completion* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @dm_integrity_io_error(%struct.TYPE_2__* %29, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %26, %2
  %33 = load %struct.journal_completion*, %struct.journal_completion** %5, align 8
  %34 = call i32 @complete_journal_op(%struct.journal_completion* %33)
  br label %35

35:                                               ; preds = %32, %20
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @dm_integrity_io_error(%struct.TYPE_2__*, i8*, i32) #1

declare dso_local i32 @complete_journal_op(%struct.journal_completion*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
