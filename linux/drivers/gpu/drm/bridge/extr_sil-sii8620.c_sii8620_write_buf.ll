; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sil-sii8620.c_sii8620_write_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/bridge/extr_sil-sii8620.c_sii8620_write_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sii8620 = type { i32, %struct.device* }
%struct.device = type { i32 }
%struct.i2c_client = type { i32, i32 }
%struct.i2c_msg = type { i32, i32*, i32, i32 }

@sii8620_i2c_page = common dso_local global i32* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"write at %04x: %*ph, %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Write at %#06x of %*ph failed with code %d.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sii8620*, i32, i32*, i32)* @sii8620_write_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sii8620_write_buf(%struct.sii8620* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.sii8620*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.device*, align 8
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca [2 x i32], align 4
  %12 = alloca %struct.i2c_msg, align 8
  %13 = alloca i32, align 4
  store %struct.sii8620* %0, %struct.sii8620** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load %struct.sii8620*, %struct.sii8620** %5, align 8
  %15 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %14, i32 0, i32 1
  %16 = load %struct.device*, %struct.device** %15, align 8
  store %struct.device* %16, %struct.device** %9, align 8
  %17 = load %struct.device*, %struct.device** %9, align 8
  %18 = call %struct.i2c_client* @to_i2c_client(%struct.device* %17)
  store %struct.i2c_client* %18, %struct.i2c_client** %10, align 8
  %19 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %12, i32 0, i32 0
  %20 = load i32, i32* %8, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 8
  %22 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %12, i32 0, i32 1
  store i32* null, i32** %22, align 8
  %23 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %12, i32 0, i32 2
  %24 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %25 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %23, align 8
  %27 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %12, i32 0, i32 3
  %28 = load i32*, i32** @sii8620_i2c_page, align 8
  %29 = load i32, i32* %6, align 4
  %30 = ashr i32 %29, 8
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %27, align 4
  %34 = load %struct.sii8620*, %struct.sii8620** %5, align 8
  %35 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %4
  br label %112

39:                                               ; preds = %4
  %40 = load i32, i32* %8, align 4
  %41 = icmp sgt i32 %40, 1
  br i1 %41, label %42, label %63

42:                                               ; preds = %39
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, 1
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call i32* @kmalloc(i32 %44, i32 %45)
  %47 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %12, i32 0, i32 1
  store i32* %46, i32** %47, align 8
  %48 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %12, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %56, label %51

51:                                               ; preds = %42
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  %54 = load %struct.sii8620*, %struct.sii8620** %5, align 8
  %55 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  br label %112

56:                                               ; preds = %42
  %57 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %12, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  %60 = load i32*, i32** %7, align 8
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @memcpy(i32* %59, i32* %60, i32 %61)
  br label %71

63:                                               ; preds = %39
  %64 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %65 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %12, i32 0, i32 1
  store i32* %64, i32** %65, align 8
  %66 = load i32*, i32** %7, align 8
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %12, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  store i32 %67, i32* %70, align 4
  br label %71

71:                                               ; preds = %63, %56
  %72 = load i32, i32* %6, align 4
  %73 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %12, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  store i32 %72, i32* %75, align 4
  %76 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %77 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @i2c_transfer(i32 %78, %struct.i2c_msg* %12, i32 1)
  store i32 %79, i32* %13, align 4
  %80 = load %struct.device*, %struct.device** %9, align 8
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* %8, align 4
  %83 = load i32*, i32** %7, align 8
  %84 = load i32, i32* %13, align 4
  %85 = call i32 @dev_dbg(%struct.device* %80, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %81, i32 %82, i32* %83, i32 %84)
  %86 = load i32, i32* %13, align 4
  %87 = icmp ne i32 %86, 1
  br i1 %87, label %88, label %105

88:                                               ; preds = %71
  %89 = load %struct.device*, %struct.device** %9, align 8
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* %8, align 4
  %92 = load i32*, i32** %7, align 8
  %93 = load i32, i32* %13, align 4
  %94 = call i32 @dev_err(%struct.device* %89, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %90, i32 %91, i32* %92, i32 %93)
  %95 = load i32, i32* %13, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %88
  br label %101

98:                                               ; preds = %88
  %99 = load i32, i32* @EIO, align 4
  %100 = sub nsw i32 0, %99
  br label %101

101:                                              ; preds = %98, %97
  %102 = phi i32 [ %95, %97 ], [ %100, %98 ]
  %103 = load %struct.sii8620*, %struct.sii8620** %5, align 8
  %104 = getelementptr inbounds %struct.sii8620, %struct.sii8620* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  br label %105

105:                                              ; preds = %101, %71
  %106 = load i32, i32* %8, align 4
  %107 = icmp sgt i32 %106, 1
  br i1 %107, label %108, label %112

108:                                              ; preds = %105
  %109 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %12, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = call i32 @kfree(i32* %110)
  br label %112

112:                                              ; preds = %38, %51, %108, %105
  ret void
}

declare dso_local %struct.i2c_client* @to_i2c_client(%struct.device*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32, i32*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
