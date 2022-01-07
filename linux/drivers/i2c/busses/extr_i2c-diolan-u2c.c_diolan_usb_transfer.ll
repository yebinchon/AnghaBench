; ModuleID = '/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-diolan-u2c.c_diolan_usb_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i2c/busses/extr_i2c-diolan-u2c.c_diolan_usb_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_diolan_u2c = type { i32, i32, i32*, i32*, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@DIOLAN_USB_TIMEOUT = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_diolan_u2c*)* @diolan_usb_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @diolan_usb_transfer(%struct.i2c_diolan_u2c* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_diolan_u2c*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.i2c_diolan_u2c* %0, %struct.i2c_diolan_u2c** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.i2c_diolan_u2c*, %struct.i2c_diolan_u2c** %3, align 8
  %9 = getelementptr inbounds %struct.i2c_diolan_u2c, %struct.i2c_diolan_u2c* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.i2c_diolan_u2c*, %struct.i2c_diolan_u2c** %3, align 8
  %14 = getelementptr inbounds %struct.i2c_diolan_u2c, %struct.i2c_diolan_u2c* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %12, %1
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %115

20:                                               ; preds = %12
  %21 = load %struct.i2c_diolan_u2c*, %struct.i2c_diolan_u2c** %3, align 8
  %22 = getelementptr inbounds %struct.i2c_diolan_u2c, %struct.i2c_diolan_u2c* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.i2c_diolan_u2c*, %struct.i2c_diolan_u2c** %3, align 8
  %25 = getelementptr inbounds %struct.i2c_diolan_u2c, %struct.i2c_diolan_u2c* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.i2c_diolan_u2c*, %struct.i2c_diolan_u2c** %3, align 8
  %28 = getelementptr inbounds %struct.i2c_diolan_u2c, %struct.i2c_diolan_u2c* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @usb_sndbulkpipe(i32 %26, i32 %29)
  %31 = load %struct.i2c_diolan_u2c*, %struct.i2c_diolan_u2c** %3, align 8
  %32 = getelementptr inbounds %struct.i2c_diolan_u2c, %struct.i2c_diolan_u2c* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = load %struct.i2c_diolan_u2c*, %struct.i2c_diolan_u2c** %3, align 8
  %35 = getelementptr inbounds %struct.i2c_diolan_u2c, %struct.i2c_diolan_u2c* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @DIOLAN_USB_TIMEOUT, align 4
  %38 = call i32 @usb_bulk_msg(i32 %23, i32 %30, i32* %33, i32 %36, i32* %5, i32 %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %109, label %41

41:                                               ; preds = %20
  store i32 0, i32* %6, align 4
  br label %42

42:                                               ; preds = %105, %41
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.i2c_diolan_u2c*, %struct.i2c_diolan_u2c** %3, align 8
  %45 = getelementptr inbounds %struct.i2c_diolan_u2c, %struct.i2c_diolan_u2c* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %108

48:                                               ; preds = %42
  %49 = load %struct.i2c_diolan_u2c*, %struct.i2c_diolan_u2c** %3, align 8
  %50 = getelementptr inbounds %struct.i2c_diolan_u2c, %struct.i2c_diolan_u2c* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.i2c_diolan_u2c*, %struct.i2c_diolan_u2c** %3, align 8
  %53 = getelementptr inbounds %struct.i2c_diolan_u2c, %struct.i2c_diolan_u2c* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.i2c_diolan_u2c*, %struct.i2c_diolan_u2c** %3, align 8
  %56 = getelementptr inbounds %struct.i2c_diolan_u2c, %struct.i2c_diolan_u2c* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @usb_rcvbulkpipe(i32 %54, i32 %57)
  %59 = load %struct.i2c_diolan_u2c*, %struct.i2c_diolan_u2c** %3, align 8
  %60 = getelementptr inbounds %struct.i2c_diolan_u2c, %struct.i2c_diolan_u2c* %59, i32 0, i32 3
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* @DIOLAN_USB_TIMEOUT, align 4
  %63 = call i32 @usb_bulk_msg(i32 %51, i32 %58, i32* %61, i32 8, i32* %5, i32 %62)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %4, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %48
  br label %105

67:                                               ; preds = %48
  %68 = load i32, i32* %7, align 4
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* %4, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %104

71:                                               ; preds = %67
  %72 = load i32, i32* %5, align 4
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %104

74:                                               ; preds = %71
  %75 = load %struct.i2c_diolan_u2c*, %struct.i2c_diolan_u2c** %3, align 8
  %76 = getelementptr inbounds %struct.i2c_diolan_u2c, %struct.i2c_diolan_u2c* %75, i32 0, i32 3
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %5, align 4
  %79 = sub nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %77, i64 %80
  %82 = load i32, i32* %81, align 4
  switch i32 %82, label %100 [
    i32 130, label %83
    i32 128, label %94
    i32 129, label %97
  ]

83:                                               ; preds = %74
  %84 = load i32, i32* %6, align 4
  %85 = icmp eq i32 %84, 1
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i32, i32* @ENXIO, align 4
  %88 = sub nsw i32 0, %87
  br label %92

89:                                               ; preds = %83
  %90 = load i32, i32* @EIO, align 4
  %91 = sub nsw i32 0, %90
  br label %92

92:                                               ; preds = %89, %86
  %93 = phi i32 [ %88, %86 ], [ %91, %89 ]
  store i32 %93, i32* %4, align 4
  br label %103

94:                                               ; preds = %74
  %95 = load i32, i32* @ETIMEDOUT, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %4, align 4
  br label %103

97:                                               ; preds = %74
  %98 = load i32, i32* %5, align 4
  %99 = sub nsw i32 %98, 1
  store i32 %99, i32* %4, align 4
  br label %103

100:                                              ; preds = %74
  %101 = load i32, i32* @EIO, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %4, align 4
  br label %103

103:                                              ; preds = %100, %97, %94, %92
  br label %104

104:                                              ; preds = %103, %71, %67
  br label %105

105:                                              ; preds = %104, %66
  %106 = load i32, i32* %6, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %6, align 4
  br label %42

108:                                              ; preds = %42
  br label %109

109:                                              ; preds = %108, %20
  %110 = load %struct.i2c_diolan_u2c*, %struct.i2c_diolan_u2c** %3, align 8
  %111 = getelementptr inbounds %struct.i2c_diolan_u2c, %struct.i2c_diolan_u2c* %110, i32 0, i32 0
  store i32 0, i32* %111, align 8
  %112 = load %struct.i2c_diolan_u2c*, %struct.i2c_diolan_u2c** %3, align 8
  %113 = getelementptr inbounds %struct.i2c_diolan_u2c, %struct.i2c_diolan_u2c* %112, i32 0, i32 1
  store i32 0, i32* %113, align 4
  %114 = load i32, i32* %4, align 4
  store i32 %114, i32* %2, align 4
  br label %115

115:                                              ; preds = %109, %17
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local i32 @usb_bulk_msg(i32, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #1

declare dso_local i32 @usb_rcvbulkpipe(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
