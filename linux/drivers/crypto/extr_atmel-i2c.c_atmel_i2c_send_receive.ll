; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-i2c.c_atmel_i2c_send_receive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-i2c.c_atmel_i2c_send_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.atmel_i2c_cmd = type { i32, i32, i32, i64 }
%struct.atmel_i2c_client_priv = type { i32 }

@WORD_ADDR_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @atmel_i2c_send_receive(%struct.i2c_client* %0, %struct.atmel_i2c_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.atmel_i2c_cmd*, align 8
  %6 = alloca %struct.atmel_i2c_client_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.atmel_i2c_cmd* %1, %struct.atmel_i2c_cmd** %5, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %9 = call %struct.atmel_i2c_client_priv* @i2c_get_clientdata(%struct.i2c_client* %8)
  store %struct.atmel_i2c_client_priv* %9, %struct.atmel_i2c_client_priv** %6, align 8
  %10 = load %struct.atmel_i2c_client_priv*, %struct.atmel_i2c_client_priv** %6, align 8
  %11 = getelementptr inbounds %struct.atmel_i2c_client_priv, %struct.atmel_i2c_client_priv* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %14 = call i32 @atmel_i2c_wakeup(%struct.i2c_client* %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %63

18:                                               ; preds = %2
  %19 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %20 = load %struct.atmel_i2c_cmd*, %struct.atmel_i2c_cmd** %5, align 8
  %21 = bitcast %struct.atmel_i2c_cmd* %20 to i32*
  %22 = load %struct.atmel_i2c_cmd*, %struct.atmel_i2c_cmd** %5, align 8
  %23 = getelementptr inbounds %struct.atmel_i2c_cmd, %struct.atmel_i2c_cmd* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @WORD_ADDR_SIZE, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @i2c_master_send(%struct.i2c_client* %19, i32* %21, i64 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %18
  br label %63

31:                                               ; preds = %18
  %32 = load %struct.atmel_i2c_cmd*, %struct.atmel_i2c_cmd** %5, align 8
  %33 = getelementptr inbounds %struct.atmel_i2c_cmd, %struct.atmel_i2c_cmd* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @msleep(i32 %34)
  %36 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %37 = load %struct.atmel_i2c_cmd*, %struct.atmel_i2c_cmd** %5, align 8
  %38 = getelementptr inbounds %struct.atmel_i2c_cmd, %struct.atmel_i2c_cmd* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.atmel_i2c_cmd*, %struct.atmel_i2c_cmd** %5, align 8
  %41 = getelementptr inbounds %struct.atmel_i2c_cmd, %struct.atmel_i2c_cmd* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @i2c_master_recv(%struct.i2c_client* %36, i32 %39, i32 %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %31
  br label %63

47:                                               ; preds = %31
  %48 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %49 = call i32 @atmel_i2c_sleep(%struct.i2c_client* %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %63

53:                                               ; preds = %47
  %54 = load %struct.atmel_i2c_client_priv*, %struct.atmel_i2c_client_priv** %6, align 8
  %55 = getelementptr inbounds %struct.atmel_i2c_client_priv, %struct.atmel_i2c_client_priv* %54, i32 0, i32 0
  %56 = call i32 @mutex_unlock(i32* %55)
  %57 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %58 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %57, i32 0, i32 0
  %59 = load %struct.atmel_i2c_cmd*, %struct.atmel_i2c_cmd** %5, align 8
  %60 = getelementptr inbounds %struct.atmel_i2c_cmd, %struct.atmel_i2c_cmd* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @atmel_i2c_status(i32* %58, i32 %61)
  store i32 %62, i32* %3, align 4
  br label %68

63:                                               ; preds = %52, %46, %30, %17
  %64 = load %struct.atmel_i2c_client_priv*, %struct.atmel_i2c_client_priv** %6, align 8
  %65 = getelementptr inbounds %struct.atmel_i2c_client_priv, %struct.atmel_i2c_client_priv* %64, i32 0, i32 0
  %66 = call i32 @mutex_unlock(i32* %65)
  %67 = load i32, i32* %7, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %63, %53
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local %struct.atmel_i2c_client_priv* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @atmel_i2c_wakeup(%struct.i2c_client*) #1

declare dso_local i32 @i2c_master_send(%struct.i2c_client*, i32*, i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @i2c_master_recv(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @atmel_i2c_sleep(%struct.i2c_client*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @atmel_i2c_status(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
