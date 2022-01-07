; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_core-transaction.c_fw_send_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_core-transaction.c_fw_send_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_card = type { %struct.TYPE_4__*, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 (%struct.fw_card*, %struct.TYPE_5__*)* }
%struct.TYPE_5__ = type { i32 }
%struct.fw_transaction = type { i32, i32, i32, %struct.TYPE_5__, i32, i8*, i32 (%struct.fw_card.0*, i32, i32*, i32, i8*)*, i32, %struct.fw_card* }
%struct.fw_card.0 = type opaque

@RCODE_SEND_ERROR = common dso_local global i32 0, align 4
@split_transaction_timeout_callback = common dso_local global i32 0, align 4
@transmit_complete_callback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fw_send_request(%struct.fw_card* %0, %struct.fw_transaction* %1, i32 %2, i32 %3, i32 %4, i32 %5, i64 %6, i8* %7, i64 %8, i32 (%struct.fw_card*, i32, i32*, i32, i8*)* %9, i8* %10) #0 {
  %12 = alloca %struct.fw_card*, align 8
  %13 = alloca %struct.fw_transaction*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32 (%struct.fw_card*, i32, i32*, i32, i8*)*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  store %struct.fw_card* %0, %struct.fw_card** %12, align 8
  store %struct.fw_transaction* %1, %struct.fw_transaction** %13, align 8
  store i32 %2, i32* %14, align 4
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i64 %6, i64* %18, align 8
  store i8* %7, i8** %19, align 8
  store i64 %8, i64* %20, align 8
  store i32 (%struct.fw_card*, i32, i32*, i32, i8*)* %9, i32 (%struct.fw_card*, i32, i32*, i32, i8*)** %21, align 8
  store i8* %10, i8** %22, align 8
  %25 = load %struct.fw_card*, %struct.fw_card** %12, align 8
  %26 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %25, i32 0, i32 1
  %27 = load i64, i64* %23, align 8
  %28 = call i32 @spin_lock_irqsave(i32* %26, i64 %27)
  %29 = load %struct.fw_card*, %struct.fw_card** %12, align 8
  %30 = call i32 @allocate_tlabel(%struct.fw_card* %29)
  store i32 %30, i32* %24, align 4
  %31 = load i32, i32* %24, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %11
  %34 = load %struct.fw_card*, %struct.fw_card** %12, align 8
  %35 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %34, i32 0, i32 1
  %36 = load i64, i64* %23, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32* %35, i64 %36)
  %38 = load i32 (%struct.fw_card*, i32, i32*, i32, i8*)*, i32 (%struct.fw_card*, i32, i32*, i32, i8*)** %21, align 8
  %39 = load %struct.fw_card*, %struct.fw_card** %12, align 8
  %40 = load i32, i32* @RCODE_SEND_ERROR, align 4
  %41 = load i8*, i8** %22, align 8
  %42 = call i32 %38(%struct.fw_card* %39, i32 %40, i32* null, i32 0, i8* %41)
  br label %104

43:                                               ; preds = %11
  %44 = load i32, i32* %15, align 4
  %45 = load %struct.fw_transaction*, %struct.fw_transaction** %13, align 8
  %46 = getelementptr inbounds %struct.fw_transaction, %struct.fw_transaction* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* %24, align 4
  %48 = load %struct.fw_transaction*, %struct.fw_transaction** %13, align 8
  %49 = getelementptr inbounds %struct.fw_transaction, %struct.fw_transaction* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.fw_card*, %struct.fw_card** %12, align 8
  %51 = load %struct.fw_transaction*, %struct.fw_transaction** %13, align 8
  %52 = getelementptr inbounds %struct.fw_transaction, %struct.fw_transaction* %51, i32 0, i32 8
  store %struct.fw_card* %50, %struct.fw_card** %52, align 8
  %53 = load %struct.fw_transaction*, %struct.fw_transaction** %13, align 8
  %54 = getelementptr inbounds %struct.fw_transaction, %struct.fw_transaction* %53, i32 0, i32 2
  store i32 0, i32* %54, align 8
  %55 = load %struct.fw_transaction*, %struct.fw_transaction** %13, align 8
  %56 = getelementptr inbounds %struct.fw_transaction, %struct.fw_transaction* %55, i32 0, i32 7
  %57 = load i32, i32* @split_transaction_timeout_callback, align 4
  %58 = call i32 @timer_setup(i32* %56, i32 %57, i32 0)
  %59 = load i32 (%struct.fw_card*, i32, i32*, i32, i8*)*, i32 (%struct.fw_card*, i32, i32*, i32, i8*)** %21, align 8
  %60 = bitcast i32 (%struct.fw_card*, i32, i32*, i32, i8*)* %59 to i32 (%struct.fw_card.0*, i32, i32*, i32, i8*)*
  %61 = load %struct.fw_transaction*, %struct.fw_transaction** %13, align 8
  %62 = getelementptr inbounds %struct.fw_transaction, %struct.fw_transaction* %61, i32 0, i32 6
  store i32 (%struct.fw_card.0*, i32, i32*, i32, i8*)* %60, i32 (%struct.fw_card.0*, i32, i32*, i32, i8*)** %62, align 8
  %63 = load i8*, i8** %22, align 8
  %64 = load %struct.fw_transaction*, %struct.fw_transaction** %13, align 8
  %65 = getelementptr inbounds %struct.fw_transaction, %struct.fw_transaction* %64, i32 0, i32 5
  store i8* %63, i8** %65, align 8
  %66 = load %struct.fw_transaction*, %struct.fw_transaction** %13, align 8
  %67 = getelementptr inbounds %struct.fw_transaction, %struct.fw_transaction* %66, i32 0, i32 3
  %68 = load i32, i32* %14, align 4
  %69 = load %struct.fw_transaction*, %struct.fw_transaction** %13, align 8
  %70 = getelementptr inbounds %struct.fw_transaction, %struct.fw_transaction* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %15, align 4
  %73 = load %struct.fw_card*, %struct.fw_card** %12, align 8
  %74 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %16, align 4
  %77 = load i32, i32* %17, align 4
  %78 = load i64, i64* %18, align 8
  %79 = load i8*, i8** %19, align 8
  %80 = load i64, i64* %20, align 8
  %81 = call i32 @fw_fill_request(%struct.TYPE_5__* %67, i32 %68, i32 %71, i32 %72, i32 %75, i32 %76, i32 %77, i64 %78, i8* %79, i64 %80)
  %82 = load i32, i32* @transmit_complete_callback, align 4
  %83 = load %struct.fw_transaction*, %struct.fw_transaction** %13, align 8
  %84 = getelementptr inbounds %struct.fw_transaction, %struct.fw_transaction* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  store i32 %82, i32* %85, align 4
  %86 = load %struct.fw_transaction*, %struct.fw_transaction** %13, align 8
  %87 = getelementptr inbounds %struct.fw_transaction, %struct.fw_transaction* %86, i32 0, i32 4
  %88 = load %struct.fw_card*, %struct.fw_card** %12, align 8
  %89 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %88, i32 0, i32 2
  %90 = call i32 @list_add_tail(i32* %87, i32* %89)
  %91 = load %struct.fw_card*, %struct.fw_card** %12, align 8
  %92 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %91, i32 0, i32 1
  %93 = load i64, i64* %23, align 8
  %94 = call i32 @spin_unlock_irqrestore(i32* %92, i64 %93)
  %95 = load %struct.fw_card*, %struct.fw_card** %12, align 8
  %96 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %95, i32 0, i32 0
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32 (%struct.fw_card*, %struct.TYPE_5__*)*, i32 (%struct.fw_card*, %struct.TYPE_5__*)** %98, align 8
  %100 = load %struct.fw_card*, %struct.fw_card** %12, align 8
  %101 = load %struct.fw_transaction*, %struct.fw_transaction** %13, align 8
  %102 = getelementptr inbounds %struct.fw_transaction, %struct.fw_transaction* %101, i32 0, i32 3
  %103 = call i32 %99(%struct.fw_card* %100, %struct.TYPE_5__* %102)
  br label %104

104:                                              ; preds = %43, %33
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @allocate_tlabel(%struct.fw_card*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @fw_fill_request(%struct.TYPE_5__*, i32, i32, i32, i32, i32, i32, i64, i8*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
