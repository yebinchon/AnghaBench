; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-aes.c_atmel_aes_cpu_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-aes.c_atmel_aes_cpu_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_aes_dev = type { i32, i64, {}*, {}*, i32, i32, i32 }

@AES_BLOCK_SIZE = common dso_local global i64 0, align 8
@AES_ISR = common dso_local global i32 0, align 4
@AES_INT_DATARDY = common dso_local global i32 0, align 4
@AES_IER = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmel_aes_dev*)* @atmel_aes_cpu_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_aes_cpu_transfer(%struct.atmel_aes_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atmel_aes_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.atmel_aes_dev* %0, %struct.atmel_aes_dev** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %52, %1
  %7 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %8 = call i32 @AES_ODATAR(i32 0)
  %9 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %10 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @atmel_aes_read_block(%struct.atmel_aes_dev* %7, i32 %8, i32 %11)
  %13 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %14 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = add nsw i32 %15, 4
  store i32 %16, i32* %14, align 8
  %17 = load i64, i64* @AES_BLOCK_SIZE, align 8
  %18 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %19 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = sub nsw i64 %20, %17
  store i64 %21, i64* %19, align 8
  %22 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %23 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @AES_BLOCK_SIZE, align 8
  %26 = icmp slt i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %6
  br label %53

28:                                               ; preds = %6
  %29 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %30 = call i32 @AES_IDATAR(i32 0)
  %31 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %32 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @atmel_aes_write_block(%struct.atmel_aes_dev* %29, i32 %30, i32 %33)
  %35 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %36 = load i32, i32* @AES_ISR, align 4
  %37 = call i32 @atmel_aes_read(%struct.atmel_aes_dev* %35, i32 %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @AES_INT_DATARDY, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %52, label %42

42:                                               ; preds = %28
  %43 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %44 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %43, i32 0, i32 2
  %45 = bitcast {}** %44 to i32 (%struct.atmel_aes_dev*)**
  store i32 (%struct.atmel_aes_dev*)* @atmel_aes_cpu_transfer, i32 (%struct.atmel_aes_dev*)** %45, align 8
  %46 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %47 = load i32, i32* @AES_IER, align 4
  %48 = load i32, i32* @AES_INT_DATARDY, align 4
  %49 = call i32 @atmel_aes_write(%struct.atmel_aes_dev* %46, i32 %47, i32 %48)
  %50 = load i32, i32* @EINPROGRESS, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %86

52:                                               ; preds = %28
  br label %6

53:                                               ; preds = %27
  %54 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %55 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %54, i32 0, i32 6
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %58 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @sg_nents(i32 %59)
  %61 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %62 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %65 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @sg_copy_from_buffer(i32 %56, i32 %60, i32 %63, i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %53
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %69, %53
  %73 = load i32, i32* %4, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @atmel_aes_complete(%struct.atmel_aes_dev* %76, i32 %77)
  store i32 %78, i32* %2, align 4
  br label %86

79:                                               ; preds = %72
  %80 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %81 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %80, i32 0, i32 3
  %82 = bitcast {}** %81 to i32 (%struct.atmel_aes_dev*)**
  %83 = load i32 (%struct.atmel_aes_dev*)*, i32 (%struct.atmel_aes_dev*)** %82, align 8
  %84 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %85 = call i32 %83(%struct.atmel_aes_dev* %84)
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %79, %75, %42
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @atmel_aes_read_block(%struct.atmel_aes_dev*, i32, i32) #1

declare dso_local i32 @AES_ODATAR(i32) #1

declare dso_local i32 @atmel_aes_write_block(%struct.atmel_aes_dev*, i32, i32) #1

declare dso_local i32 @AES_IDATAR(i32) #1

declare dso_local i32 @atmel_aes_read(%struct.atmel_aes_dev*, i32) #1

declare dso_local i32 @atmel_aes_write(%struct.atmel_aes_dev*, i32, i32) #1

declare dso_local i32 @sg_copy_from_buffer(i32, i32, i32, i32) #1

declare dso_local i32 @sg_nents(i32) #1

declare dso_local i32 @atmel_aes_complete(%struct.atmel_aes_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
