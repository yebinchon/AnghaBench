; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel.c_safexcel_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/inside-secure/extr_safexcel.c_safexcel_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.safexcel_crypto_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.safexcel_command_desc = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"Could not retrieve the command descriptor\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @safexcel_complete(%struct.safexcel_crypto_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.safexcel_crypto_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.safexcel_command_desc*, align 8
  store %struct.safexcel_crypto_priv* %0, %struct.safexcel_crypto_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %6

6:                                                ; preds = %25, %2
  %7 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %8 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %9 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = call %struct.safexcel_command_desc* @safexcel_ring_next_rptr(%struct.safexcel_crypto_priv* %7, i32* %14)
  store %struct.safexcel_command_desc* %15, %struct.safexcel_command_desc** %5, align 8
  %16 = load %struct.safexcel_command_desc*, %struct.safexcel_command_desc** %5, align 8
  %17 = call i64 @IS_ERR(%struct.safexcel_command_desc* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %6
  %20 = load %struct.safexcel_crypto_priv*, %struct.safexcel_crypto_priv** %3, align 8
  %21 = getelementptr inbounds %struct.safexcel_crypto_priv, %struct.safexcel_crypto_priv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @dev_err(i32 %22, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %31

24:                                               ; preds = %6
  br label %25

25:                                               ; preds = %24
  %26 = load %struct.safexcel_command_desc*, %struct.safexcel_command_desc** %5, align 8
  %27 = getelementptr inbounds %struct.safexcel_command_desc, %struct.safexcel_command_desc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  br i1 %30, label %6, label %31

31:                                               ; preds = %19, %25
  ret void
}

declare dso_local %struct.safexcel_command_desc* @safexcel_ring_next_rptr(%struct.safexcel_crypto_priv*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.safexcel_command_desc*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
