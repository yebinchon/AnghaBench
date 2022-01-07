; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_twsi.c_qib_twsi_blk_rd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_twsi.c_qib_twsi_blk_rd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { i32 }

@QIB_TWSI_NO_DEV = common dso_local global i32 0, align 4
@READ_CMD = common dso_local global i32 0, align 4
@QIB_TWSI_START = common dso_local global i32 0, align 4
@WRITE_CMD = common dso_local global i32 0, align 4
@TWSI_BUF_WAIT_USEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Failed to write interface read addr %02X\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qib_twsi_blk_rd(%struct.qib_devdata* %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.qib_devdata*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.qib_devdata* %0, %struct.qib_devdata** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load i8*, i8** %9, align 8
  %14 = bitcast i8* %13 to i32*
  store i32* %14, i32** %12, align 8
  store i32 1, i32* %11, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @QIB_TWSI_NO_DEV, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %5
  %19 = load i32, i32* %8, align 4
  %20 = shl i32 %19, 1
  %21 = load i32, i32* @READ_CMD, align 4
  %22 = or i32 %20, %21
  store i32 %22, i32* %8, align 4
  %23 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @QIB_TWSI_START, align 4
  %26 = call i32 @qib_twsi_wr(%struct.qib_devdata* %23, i32 %24, i32 %25)
  store i32 %26, i32* %11, align 4
  br label %58

27:                                               ; preds = %5
  %28 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @WRITE_CMD, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @QIB_TWSI_START, align 4
  %33 = call i32 @qib_twsi_wr(%struct.qib_devdata* %28, i32 %31, i32 %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %27
  %37 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %38 = call i32 @stop_cmd(%struct.qib_devdata* %37)
  store i32 1, i32* %11, align 4
  br label %79

39:                                               ; preds = %27
  %40 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @qib_twsi_wr(%struct.qib_devdata* %40, i32 %41, i32 0)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* @TWSI_BUF_WAIT_USEC, align 4
  %44 = call i32 @udelay(i32 %43)
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %39
  %48 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @qib_dev_err(%struct.qib_devdata* %48, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %49)
  store i32 1, i32* %11, align 4
  br label %79

51:                                               ; preds = %39
  %52 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @READ_CMD, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @QIB_TWSI_START, align 4
  %57 = call i32 @qib_twsi_wr(%struct.qib_devdata* %52, i32 %55, i32 %56)
  store i32 %57, i32* %11, align 4
  br label %58

58:                                               ; preds = %51, %18
  %59 = load i32, i32* %11, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %63 = call i32 @stop_cmd(%struct.qib_devdata* %62)
  store i32 1, i32* %11, align 4
  br label %79

64:                                               ; preds = %58
  br label %65

65:                                               ; preds = %69, %64
  %66 = load i32, i32* %10, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %10, align 4
  %68 = icmp sgt i32 %66, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %65
  %70 = load %struct.qib_devdata*, %struct.qib_devdata** %6, align 8
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %71, 0
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  %75 = call i32 @rd_byte(%struct.qib_devdata* %70, i32 %74)
  %76 = load i32*, i32** %12, align 8
  %77 = getelementptr inbounds i32, i32* %76, i32 1
  store i32* %77, i32** %12, align 8
  store i32 %75, i32* %76, align 4
  br label %65

78:                                               ; preds = %65
  store i32 0, i32* %11, align 4
  br label %79

79:                                               ; preds = %78, %61, %47, %36
  %80 = load i32, i32* %11, align 4
  ret i32 %80
}

declare dso_local i32 @qib_twsi_wr(%struct.qib_devdata*, i32, i32) #1

declare dso_local i32 @stop_cmd(%struct.qib_devdata*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @qib_dev_err(%struct.qib_devdata*, i8*, i32) #1

declare dso_local i32 @rd_byte(%struct.qib_devdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
