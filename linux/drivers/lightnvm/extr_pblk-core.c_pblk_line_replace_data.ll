; ModuleID = '/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c_pblk_line_replace_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/lightnvm/extr_pblk-core.c_pblk_line_replace_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pblk_line = type { i32, i64, i32, i32 }
%struct.pblk = type { i32, i32, %struct.pblk_line_mgmt }
%struct.pblk_line_mgmt = type { i32, %struct.pblk_line*, i32, %struct.pblk_line* }

@PBLK_LINETYPE_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pblk_line* @pblk_line_replace_data(%struct.pblk* %0) #0 {
  %2 = alloca %struct.pblk_line*, align 8
  %3 = alloca %struct.pblk*, align 8
  %4 = alloca %struct.pblk_line_mgmt*, align 8
  %5 = alloca %struct.pblk_line*, align 8
  %6 = alloca %struct.pblk_line*, align 8
  %7 = alloca i32, align 4
  store %struct.pblk* %0, %struct.pblk** %3, align 8
  %8 = load %struct.pblk*, %struct.pblk** %3, align 8
  %9 = getelementptr inbounds %struct.pblk, %struct.pblk* %8, i32 0, i32 2
  store %struct.pblk_line_mgmt* %9, %struct.pblk_line_mgmt** %4, align 8
  store %struct.pblk_line* null, %struct.pblk_line** %6, align 8
  %10 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %4, align 8
  %11 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %10, i32 0, i32 1
  %12 = load %struct.pblk_line*, %struct.pblk_line** %11, align 8
  store %struct.pblk_line* %12, %struct.pblk_line** %6, align 8
  %13 = load %struct.pblk_line*, %struct.pblk_line** %6, align 8
  %14 = icmp ne %struct.pblk_line* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %130

16:                                               ; preds = %1
  %17 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %4, align 8
  %18 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %17, i32 0, i32 0
  %19 = call i32 @spin_lock(i32* %18)
  %20 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %4, align 8
  %21 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %20, i32 0, i32 3
  %22 = load %struct.pblk_line*, %struct.pblk_line** %21, align 8
  store %struct.pblk_line* %22, %struct.pblk_line** %5, align 8
  %23 = load %struct.pblk_line*, %struct.pblk_line** %6, align 8
  %24 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %4, align 8
  %25 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %24, i32 0, i32 3
  store %struct.pblk_line* %23, %struct.pblk_line** %25, align 8
  %26 = load %struct.pblk_line*, %struct.pblk_line** %6, align 8
  %27 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %4, align 8
  %28 = load %struct.pblk*, %struct.pblk** %3, align 8
  %29 = getelementptr inbounds %struct.pblk, %struct.pblk* %28, i32 0, i32 1
  %30 = call i32 @pblk_line_setup_metadata(%struct.pblk_line* %26, %struct.pblk_line_mgmt* %27, i32* %29)
  %31 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %4, align 8
  %32 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %31, i32 0, i32 0
  %33 = call i32 @spin_unlock(i32* %32)
  br label %34

34:                                               ; preds = %54, %16
  %35 = load %struct.pblk_line*, %struct.pblk_line** %6, align 8
  %36 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %35, i32 0, i32 3
  %37 = call i32 @atomic_read(i32* %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %34
  %41 = load %struct.pblk_line*, %struct.pblk_line** %6, align 8
  %42 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %41, i32 0, i32 2
  %43 = call i32 @atomic_read(i32* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %40
  %46 = load %struct.pblk*, %struct.pblk** %3, align 8
  %47 = load %struct.pblk_line*, %struct.pblk_line** %6, align 8
  %48 = call i64 @pblk_line_erase(%struct.pblk* %46, %struct.pblk_line* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %130

51:                                               ; preds = %45
  br label %54

52:                                               ; preds = %40
  %53 = call i32 (...) @io_schedule()
  br label %54

54:                                               ; preds = %52, %51
  br label %34

55:                                               ; preds = %34
  %56 = load %struct.pblk*, %struct.pblk** %3, align 8
  %57 = load %struct.pblk_line*, %struct.pblk_line** %6, align 8
  %58 = call i64 @pblk_line_alloc_bitmaps(%struct.pblk* %56, %struct.pblk_line* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  store %struct.pblk_line* null, %struct.pblk_line** %2, align 8
  br label %132

61:                                               ; preds = %55
  br label %62

62:                                               ; preds = %88, %75, %61
  %63 = load %struct.pblk*, %struct.pblk** %3, align 8
  %64 = load %struct.pblk_line*, %struct.pblk_line** %6, align 8
  %65 = load %struct.pblk_line*, %struct.pblk_line** %5, align 8
  %66 = call i32 @pblk_line_init_metadata(%struct.pblk* %63, %struct.pblk_line* %64, %struct.pblk_line* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %76, label %68

68:                                               ; preds = %62
  %69 = load %struct.pblk*, %struct.pblk** %3, align 8
  %70 = load %struct.pblk_line*, %struct.pblk_line** %6, align 8
  %71 = call %struct.pblk_line* @pblk_line_retry(%struct.pblk* %69, %struct.pblk_line* %70)
  store %struct.pblk_line* %71, %struct.pblk_line** %6, align 8
  %72 = load %struct.pblk_line*, %struct.pblk_line** %6, align 8
  %73 = icmp ne %struct.pblk_line* %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %68
  br label %130

75:                                               ; preds = %68
  br label %62

76:                                               ; preds = %62
  %77 = load %struct.pblk*, %struct.pblk** %3, align 8
  %78 = load %struct.pblk_line*, %struct.pblk_line** %6, align 8
  %79 = call i32 @pblk_line_init_bb(%struct.pblk* %77, %struct.pblk_line* %78, i32 1)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %89, label %81

81:                                               ; preds = %76
  %82 = load %struct.pblk*, %struct.pblk** %3, align 8
  %83 = load %struct.pblk_line*, %struct.pblk_line** %6, align 8
  %84 = call %struct.pblk_line* @pblk_line_retry(%struct.pblk* %82, %struct.pblk_line* %83)
  store %struct.pblk_line* %84, %struct.pblk_line** %6, align 8
  %85 = load %struct.pblk_line*, %struct.pblk_line** %6, align 8
  %86 = icmp ne %struct.pblk_line* %85, null
  br i1 %86, label %88, label %87

87:                                               ; preds = %81
  br label %130

88:                                               ; preds = %81
  br label %62

89:                                               ; preds = %76
  %90 = load %struct.pblk*, %struct.pblk** %3, align 8
  %91 = getelementptr inbounds %struct.pblk, %struct.pblk* %90, i32 0, i32 0
  %92 = load %struct.pblk_line*, %struct.pblk_line** %6, align 8
  %93 = call i32 @pblk_rl_free_lines_dec(i32* %91, %struct.pblk_line* %92, i32 1)
  %94 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %4, align 8
  %95 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %94, i32 0, i32 0
  %96 = call i32 @spin_lock(i32* %95)
  %97 = load %struct.pblk*, %struct.pblk** %3, align 8
  %98 = call %struct.pblk_line* @pblk_line_get(%struct.pblk* %97)
  %99 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %4, align 8
  %100 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %99, i32 0, i32 1
  store %struct.pblk_line* %98, %struct.pblk_line** %100, align 8
  %101 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %4, align 8
  %102 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %101, i32 0, i32 1
  %103 = load %struct.pblk_line*, %struct.pblk_line** %102, align 8
  %104 = icmp ne %struct.pblk_line* %103, null
  br i1 %104, label %111, label %105

105:                                              ; preds = %89
  %106 = load %struct.pblk*, %struct.pblk** %3, align 8
  %107 = load %struct.pblk_line*, %struct.pblk_line** %6, align 8
  %108 = call i32 @pblk_stop_writes(%struct.pblk* %106, %struct.pblk_line* %107)
  %109 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %4, align 8
  %110 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %109, i32 0, i32 1
  store %struct.pblk_line* null, %struct.pblk_line** %110, align 8
  br label %126

111:                                              ; preds = %89
  %112 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %4, align 8
  %113 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %113, align 8
  %116 = sext i32 %114 to i64
  %117 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %4, align 8
  %118 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %117, i32 0, i32 1
  %119 = load %struct.pblk_line*, %struct.pblk_line** %118, align 8
  %120 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %119, i32 0, i32 1
  store i64 %116, i64* %120, align 8
  %121 = load i32, i32* @PBLK_LINETYPE_DATA, align 4
  %122 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %4, align 8
  %123 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %122, i32 0, i32 1
  %124 = load %struct.pblk_line*, %struct.pblk_line** %123, align 8
  %125 = getelementptr inbounds %struct.pblk_line, %struct.pblk_line* %124, i32 0, i32 0
  store i32 %121, i32* %125, align 8
  br label %126

126:                                              ; preds = %111, %105
  %127 = load %struct.pblk_line_mgmt*, %struct.pblk_line_mgmt** %4, align 8
  %128 = getelementptr inbounds %struct.pblk_line_mgmt, %struct.pblk_line_mgmt* %127, i32 0, i32 0
  %129 = call i32 @spin_unlock(i32* %128)
  br label %130

130:                                              ; preds = %126, %87, %74, %50, %15
  %131 = load %struct.pblk_line*, %struct.pblk_line** %6, align 8
  store %struct.pblk_line* %131, %struct.pblk_line** %2, align 8
  br label %132

132:                                              ; preds = %130, %60
  %133 = load %struct.pblk_line*, %struct.pblk_line** %2, align 8
  ret %struct.pblk_line* %133
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @pblk_line_setup_metadata(%struct.pblk_line*, %struct.pblk_line_mgmt*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i64 @pblk_line_erase(%struct.pblk*, %struct.pblk_line*) #1

declare dso_local i32 @io_schedule(...) #1

declare dso_local i64 @pblk_line_alloc_bitmaps(%struct.pblk*, %struct.pblk_line*) #1

declare dso_local i32 @pblk_line_init_metadata(%struct.pblk*, %struct.pblk_line*, %struct.pblk_line*) #1

declare dso_local %struct.pblk_line* @pblk_line_retry(%struct.pblk*, %struct.pblk_line*) #1

declare dso_local i32 @pblk_line_init_bb(%struct.pblk*, %struct.pblk_line*, i32) #1

declare dso_local i32 @pblk_rl_free_lines_dec(i32*, %struct.pblk_line*, i32) #1

declare dso_local %struct.pblk_line* @pblk_line_get(%struct.pblk*) #1

declare dso_local i32 @pblk_stop_writes(%struct.pblk*, %struct.pblk_line*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
