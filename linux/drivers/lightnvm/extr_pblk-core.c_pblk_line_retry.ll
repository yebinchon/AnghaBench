; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c_pblk_line_retry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c_pblk_line_retry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk = type { i32, %struct.pblk_line_mgmt }
%struct.pblk_line_mgmt = type { i32, %struct.pblk_line* }
%struct.pblk_line = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pblk_line* (%struct.pblk*, %struct.pblk_line*)* @pblk_line_retry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pblk_line* @pblk_line_retry(%struct.pblk* %0, %struct.pblk_line* %1) #0 {
  %3 = alloca %struct.pblk_line*, align 8
  %4 = alloca %struct.pblk*, align 8
  %5 = alloca %struct.pblk_line*, align 8
  %6 = alloca %struct.pblk_line_mgmt*, align 8
  %7 = alloca %struct.pblk_line*, align 8
  store %struct.pblk* %0, %struct.pblk** %4, align 8
  store %struct.pblk_line* %1, %struct.pblk_line** %5, align 8
  %8 = load %struct.pblk*, %struct.pblk** %4, align 8
  %9 = getelementptr inbounds %struct.pblk, %struct.pblk* %8, i32 0, i32 1
  store %struct.pblk_line_mgmt* %9, %struct.pblk_line_mgmt** %6, align 8
  br label %10

10:                                               ; preds = %66, %2
  %11 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %6, align 8
  %12 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %11, i32 0, i32 0
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load %struct.pblk*, %struct.pblk** %4, align 8
  %15 = call %struct.pblk_line* @pblk_line_get(%struct.pblk* %14)
  store %struct.pblk_line* %15, %struct.pblk_line** %7, align 8
  %16 = load %struct.pblk_line*, %struct.pblk_line** %7, align 8
  %17 = icmp ne %struct.pblk_line* %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %10
  %19 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %6, align 8
  %20 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %19, i32 0, i32 1
  store %struct.pblk_line* null, %struct.pblk_line** %20, align 8
  %21 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %6, align 8
  %22 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %21, i32 0, i32 0
  %23 = call i32 @spin_unlock(i32* %22)
  store %struct.pblk_line* null, %struct.pblk_line** %3, align 8
  br label %69

24:                                               ; preds = %10
  %25 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %26 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.pblk_line*, %struct.pblk_line** %7, align 8
  %29 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 4
  %30 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %31 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.pblk_line*, %struct.pblk_line** %7, align 8
  %34 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 4
  %35 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %36 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.pblk_line*, %struct.pblk_line** %7, align 8
  %39 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %41 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.pblk_line*, %struct.pblk_line** %7, align 8
  %44 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %46 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.pblk_line*, %struct.pblk_line** %7, align 8
  %49 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %51 = call i32 @pblk_line_reinit(%struct.pblk_line* %50)
  %52 = load %struct.pblk_line*, %struct.pblk_line** %7, align 8
  %53 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %6, align 8
  %54 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %53, i32 0, i32 1
  store %struct.pblk_line* %52, %struct.pblk_line** %54, align 8
  %55 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %6, align 8
  %56 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %55, i32 0, i32 0
  %57 = call i32 @spin_unlock(i32* %56)
  %58 = load %struct.pblk*, %struct.pblk** %4, align 8
  %59 = getelementptr inbounds %struct.pblk, %struct.pblk* %58, i32 0, i32 0
  %60 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %61 = call i32 @pblk_rl_free_lines_dec(i32* %59, %struct.pblk_line* %60, i32 0)
  %62 = load %struct.pblk*, %struct.pblk** %4, align 8
  %63 = load %struct.pblk_line*, %struct.pblk_line** %7, align 8
  %64 = call i64 @pblk_line_erase(%struct.pblk* %62, %struct.pblk_line* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %24
  br label %10

67:                                               ; preds = %24
  %68 = load %struct.pblk_line*, %struct.pblk_line** %7, align 8
  store %struct.pblk_line* %68, %struct.pblk_line** %3, align 8
  br label %69

69:                                               ; preds = %67, %18
  %70 = load %struct.pblk_line*, %struct.pblk_line** %3, align 8
  ret %struct.pblk_line* %70
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.pblk_line* @pblk_line_get(%struct.pblk*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @pblk_line_reinit(%struct.pblk_line*) #1

declare dso_local i32 @pblk_rl_free_lines_dec(i32*, %struct.pblk_line*, i32) #1

declare dso_local i64 @pblk_line_erase(%struct.pblk*, %struct.pblk_line*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
