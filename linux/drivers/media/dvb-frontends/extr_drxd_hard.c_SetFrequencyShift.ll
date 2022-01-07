; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_drxd_hard.c_SetFrequencyShift.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_drxd_hard.c_SetFrequencyShift.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drxd_state = type { i32, i32, i32, i32, i64 }

@FE_FS_REG_ADD_INC_LOP__A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drxd_state*, i64, i32)* @SetFrequencyShift to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SetFrequencyShift(%struct.drxd_state* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.drxd_state*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.drxd_state* %0, %struct.drxd_state** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %9 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* %6, align 4
  %12 = icmp eq i32 %10, %11
  %13 = zext i1 %12 to i32
  store i32 %13, i32* %7, align 4
  %14 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %15 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %14, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %5, align 8
  %18 = add nsw i64 %16, %17
  %19 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %20 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i8* @MulDiv32(i64 %18, i32 268435456, i32 %21)
  %23 = ptrtoint i8* %22 to i32
  %24 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %25 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %27 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = and i64 %29, 268435455
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %27, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %3
  %35 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %36 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = sub nsw i32 268435456, %37
  %39 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %40 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %34, %3
  %42 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %43 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %42, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %46 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @MulDiv32(i64 %44, i32 268435456, i32 %47)
  %49 = ptrtoint i8* %48 to i32
  %50 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %51 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  %52 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %53 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = and i64 %55, 268435455
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %53, align 8
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %41
  %61 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %62 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = sub nsw i64 268435456, %64
  %66 = trunc i64 %65 to i32
  %67 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %68 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 8
  br label %69

69:                                               ; preds = %60, %41
  %70 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %71 = load i32, i32* @FE_FS_REG_ADD_INC_LOP__A, align 4
  %72 = load %struct.drxd_state*, %struct.drxd_state** %4, align 8
  %73 = getelementptr inbounds %struct.drxd_state, %struct.drxd_state* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @Write32(%struct.drxd_state* %70, i32 %71, i32 %74, i32 0)
  ret i32 %75
}

declare dso_local i8* @MulDiv32(i64, i32, i32) #1

declare dso_local i32 @Write32(%struct.drxd_state*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
