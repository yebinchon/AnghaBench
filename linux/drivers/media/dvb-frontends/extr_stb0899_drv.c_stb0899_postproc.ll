; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stb0899_drv.c_stb0899_postproc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stb0899_drv.c_stb0899_postproc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stb0899_state = type { %struct.stb0899_config* }
%struct.stb0899_config = type { %struct.stb0899_postproc* }
%struct.stb0899_postproc = type { i64, i32 }

@STB0899_GPIOPULLUP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stb0899_state*, i64, i32)* @stb0899_postproc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stb0899_postproc(%struct.stb0899_state* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.stb0899_state*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.stb0899_config*, align 8
  %8 = alloca %struct.stb0899_postproc*, align 8
  store %struct.stb0899_state* %0, %struct.stb0899_state** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.stb0899_state*, %struct.stb0899_state** %4, align 8
  %10 = getelementptr inbounds %struct.stb0899_state, %struct.stb0899_state* %9, i32 0, i32 0
  %11 = load %struct.stb0899_config*, %struct.stb0899_config** %10, align 8
  store %struct.stb0899_config* %11, %struct.stb0899_config** %7, align 8
  %12 = load %struct.stb0899_config*, %struct.stb0899_config** %7, align 8
  %13 = getelementptr inbounds %struct.stb0899_config, %struct.stb0899_config* %12, i32 0, i32 0
  %14 = load %struct.stb0899_postproc*, %struct.stb0899_postproc** %13, align 8
  store %struct.stb0899_postproc* %14, %struct.stb0899_postproc** %8, align 8
  %15 = load %struct.stb0899_postproc*, %struct.stb0899_postproc** %8, align 8
  %16 = icmp ne %struct.stb0899_postproc* %15, null
  br i1 %16, label %17, label %71

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %45

20:                                               ; preds = %17
  %21 = load %struct.stb0899_postproc*, %struct.stb0899_postproc** %8, align 8
  %22 = load i64, i64* %5, align 8
  %23 = getelementptr inbounds %struct.stb0899_postproc, %struct.stb0899_postproc* %21, i64 %22
  %24 = getelementptr inbounds %struct.stb0899_postproc, %struct.stb0899_postproc* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @STB0899_GPIOPULLUP, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %20
  %29 = load %struct.stb0899_state*, %struct.stb0899_state** %4, align 8
  %30 = load %struct.stb0899_postproc*, %struct.stb0899_postproc** %8, align 8
  %31 = load i64, i64* %5, align 8
  %32 = getelementptr inbounds %struct.stb0899_postproc, %struct.stb0899_postproc* %30, i64 %31
  %33 = getelementptr inbounds %struct.stb0899_postproc, %struct.stb0899_postproc* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @stb0899_write_reg(%struct.stb0899_state* %29, i32 %34, i32 2)
  br label %44

36:                                               ; preds = %20
  %37 = load %struct.stb0899_state*, %struct.stb0899_state** %4, align 8
  %38 = load %struct.stb0899_postproc*, %struct.stb0899_postproc** %8, align 8
  %39 = load i64, i64* %5, align 8
  %40 = getelementptr inbounds %struct.stb0899_postproc, %struct.stb0899_postproc* %38, i64 %39
  %41 = getelementptr inbounds %struct.stb0899_postproc, %struct.stb0899_postproc* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @stb0899_write_reg(%struct.stb0899_state* %37, i32 %42, i32 130)
  br label %44

44:                                               ; preds = %36, %28
  br label %70

45:                                               ; preds = %17
  %46 = load %struct.stb0899_postproc*, %struct.stb0899_postproc** %8, align 8
  %47 = load i64, i64* %5, align 8
  %48 = getelementptr inbounds %struct.stb0899_postproc, %struct.stb0899_postproc* %46, i64 %47
  %49 = getelementptr inbounds %struct.stb0899_postproc, %struct.stb0899_postproc* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @STB0899_GPIOPULLUP, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %45
  %54 = load %struct.stb0899_state*, %struct.stb0899_state** %4, align 8
  %55 = load %struct.stb0899_postproc*, %struct.stb0899_postproc** %8, align 8
  %56 = load i64, i64* %5, align 8
  %57 = getelementptr inbounds %struct.stb0899_postproc, %struct.stb0899_postproc* %55, i64 %56
  %58 = getelementptr inbounds %struct.stb0899_postproc, %struct.stb0899_postproc* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @stb0899_write_reg(%struct.stb0899_state* %54, i32 %59, i32 130)
  br label %69

61:                                               ; preds = %45
  %62 = load %struct.stb0899_state*, %struct.stb0899_state** %4, align 8
  %63 = load %struct.stb0899_postproc*, %struct.stb0899_postproc** %8, align 8
  %64 = load i64, i64* %5, align 8
  %65 = getelementptr inbounds %struct.stb0899_postproc, %struct.stb0899_postproc* %63, i64 %64
  %66 = getelementptr inbounds %struct.stb0899_postproc, %struct.stb0899_postproc* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @stb0899_write_reg(%struct.stb0899_state* %62, i32 %67, i32 2)
  br label %69

69:                                               ; preds = %61, %53
  br label %70

70:                                               ; preds = %69, %44
  br label %71

71:                                               ; preds = %70, %3
  ret i32 0
}

declare dso_local i32 @stb0899_write_reg(%struct.stb0899_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
