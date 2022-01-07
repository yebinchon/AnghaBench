; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-aes.c_atmel_aes_buff_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_atmel-aes.c_atmel_aes_buff_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_aes_dev = type { i32, i32, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ATMEL_AES_BUFFER_ORDER = common dso_local global i32 0, align 4
@ATMEL_AES_BUFFER_SIZE = common dso_local global i32 0, align 4
@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"unable to alloc pages.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmel_aes_dev*)* @atmel_aes_buff_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_aes_buff_init(%struct.atmel_aes_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atmel_aes_dev*, align 8
  store %struct.atmel_aes_dev* %0, %struct.atmel_aes_dev** %3, align 8
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = load i32, i32* @ATMEL_AES_BUFFER_ORDER, align 4
  %6 = call i64 @__get_free_pages(i32 %4, i32 %5)
  %7 = inttoptr i64 %6 to i8*
  %8 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %9 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %8, i32 0, i32 2
  store i8* %7, i8** %9, align 8
  %10 = load i32, i32* @ATMEL_AES_BUFFER_SIZE, align 4
  %11 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %12 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %14 = sub nsw i32 %13, 1
  %15 = xor i32 %14, -1
  %16 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %17 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = and i32 %18, %15
  store i32 %19, i32* %17, align 8
  %20 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %21 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %20, i32 0, i32 2
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %31, label %24

24:                                               ; preds = %1
  %25 = load %struct.atmel_aes_dev*, %struct.atmel_aes_dev** %3, align 8
  %26 = getelementptr inbounds %struct.atmel_aes_dev, %struct.atmel_aes_dev* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @dev_err(i32 %27, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %32

31:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %31, %24
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i64 @__get_free_pages(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
