; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link.c_write_i2c_redriver_setting.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_link.c_write_i2c_redriver_setting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_ctx = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [185 x i8] c"redriver write 0 to all 16 reg offset expect following:\0A\09\09\09 slave_addr = 0x%x, offset[3] = 0x%x, offset[4] = 0x%x,\09\09offset[5] = 0x%x,offset[6] is_over_340mhz = 0x%x,\09\09i2c_success = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pipe_ctx*, i32)* @write_i2c_redriver_setting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_i2c_redriver_setting(%struct.pipe_ctx* %0, i32 %1) #0 {
  %3 = alloca %struct.pipe_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [16 x i32], align 16
  %7 = alloca i32, align 4
  store %struct.pipe_ctx* %0, %struct.pipe_ctx** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 120, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.pipe_ctx*, %struct.pipe_ctx** %3, align 8
  %9 = getelementptr inbounds %struct.pipe_ctx, %struct.pipe_ctx* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @DC_LOGGER_INIT(i32 %14)
  %16 = bitcast [16 x i32]* %6 to i32**
  %17 = call i32 @memset(i32** %16, i32 0, i32 64)
  %18 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 3
  store i32 78, i32* %18, align 4
  %19 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 4
  store i32 78, i32* %19, align 16
  %20 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 5
  store i32 78, i32* %20, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 78, i32 74
  %25 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 6
  store i32 %24, i32* %25, align 8
  %26 = load %struct.pipe_ctx*, %struct.pipe_ctx** %3, align 8
  %27 = load i32, i32* %5, align 4
  %28 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 0
  %29 = call i32 @i2c_write(%struct.pipe_ctx* %26, i32 %27, i32* %28, i32 64)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %5, align 4
  %31 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 3
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 4
  %34 = load i32, i32* %33, align 16
  %35 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 5
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds [16 x i32], [16 x i32]* %6, i64 0, i64 6
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 1, i32 0
  %43 = call i32 @RETIMER_REDRIVER_INFO(i8* getelementptr inbounds ([185 x i8], [185 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %32, i32 %34, i32 %36, i32 %38, i32 %42)
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %2
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @ASSERT(i32 %47)
  br label %49

49:                                               ; preds = %46, %2
  ret void
}

declare dso_local i32 @DC_LOGGER_INIT(i32) #1

declare dso_local i32 @memset(i32**, i32, i32) #1

declare dso_local i32 @i2c_write(%struct.pipe_ctx*, i32, i32*, i32) #1

declare dso_local i32 @RETIMER_REDRIVER_INFO(i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
