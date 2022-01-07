; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-integrity.c_do_crypt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-integrity.c_do_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skcipher_request = type { i32 }
%struct.journal_completion = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@CRYPTO_TFM_REQ_MAY_BACKLOG = common dso_local global i32 0, align 4
@complete_journal_encrypt = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"encrypt\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.skcipher_request*, %struct.journal_completion*)* @do_crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_crypt(i32 %0, %struct.skcipher_request* %1, %struct.journal_completion* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.skcipher_request*, align 8
  %7 = alloca %struct.journal_completion*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.skcipher_request* %1, %struct.skcipher_request** %6, align 8
  store %struct.journal_completion* %2, %struct.journal_completion** %7, align 8
  %9 = load %struct.skcipher_request*, %struct.skcipher_request** %6, align 8
  %10 = load i32, i32* @CRYPTO_TFM_REQ_MAY_BACKLOG, align 4
  %11 = load i32, i32* @complete_journal_encrypt, align 4
  %12 = load %struct.journal_completion*, %struct.journal_completion** %7, align 8
  %13 = call i32 @skcipher_request_set_callback(%struct.skcipher_request* %9, i32 %10, i32 %11, %struct.journal_completion* %12)
  %14 = load i32, i32* %5, align 4
  %15 = call i64 @likely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load %struct.skcipher_request*, %struct.skcipher_request** %6, align 8
  %19 = call i32 @crypto_skcipher_encrypt(%struct.skcipher_request* %18)
  store i32 %19, i32* %8, align 4
  br label %23

20:                                               ; preds = %3
  %21 = load %struct.skcipher_request*, %struct.skcipher_request** %6, align 8
  %22 = call i32 @crypto_skcipher_decrypt(%struct.skcipher_request* %21)
  store i32 %22, i32* %8, align 4
  br label %23

23:                                               ; preds = %20, %17
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i64 @likely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %65

31:                                               ; preds = %23
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @EINPROGRESS, align 4
  %34 = sub nsw i32 0, %33
  %35 = icmp eq i32 %32, %34
  %36 = zext i1 %35 to i32
  %37 = call i64 @likely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  store i32 1, i32* %4, align 4
  br label %65

40:                                               ; preds = %31
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @EBUSY, align 4
  %43 = sub nsw i32 0, %42
  %44 = icmp eq i32 %41, %43
  %45 = zext i1 %44 to i32
  %46 = call i64 @likely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %40
  %49 = load %struct.journal_completion*, %struct.journal_completion** %7, align 8
  %50 = getelementptr inbounds %struct.journal_completion, %struct.journal_completion* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = call i32 @wait_for_completion(i32* %52)
  %54 = load %struct.journal_completion*, %struct.journal_completion** %7, align 8
  %55 = getelementptr inbounds %struct.journal_completion, %struct.journal_completion* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = call i32 @reinit_completion(i32* %57)
  store i32 1, i32* %4, align 4
  br label %65

59:                                               ; preds = %40
  %60 = load %struct.journal_completion*, %struct.journal_completion** %7, align 8
  %61 = getelementptr inbounds %struct.journal_completion, %struct.journal_completion* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @dm_integrity_io_error(%struct.TYPE_2__* %62, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %63)
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %59, %48, %39, %30
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @skcipher_request_set_callback(%struct.skcipher_request*, i32, i32, %struct.journal_completion*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @crypto_skcipher_encrypt(%struct.skcipher_request*) #1

declare dso_local i32 @crypto_skcipher_decrypt(%struct.skcipher_request*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @dm_integrity_io_error(%struct.TYPE_2__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
