; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-ioctl.c___find_device_hash_cell.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-ioctl.c___find_device_hash_cell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hash_cell = type { i64, i64, i64 }
%struct.dm_ioctl = type { i8*, i8*, i32, i64 }

@DM_INACTIVE_PRESENT_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hash_cell* (%struct.dm_ioctl*)* @__find_device_hash_cell to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hash_cell* @__find_device_hash_cell(%struct.dm_ioctl* %0) #0 {
  %2 = alloca %struct.hash_cell*, align 8
  %3 = alloca %struct.dm_ioctl*, align 8
  %4 = alloca %struct.hash_cell*, align 8
  store %struct.dm_ioctl* %0, %struct.dm_ioctl** %3, align 8
  store %struct.hash_cell* null, %struct.hash_cell** %4, align 8
  %5 = load %struct.dm_ioctl*, %struct.dm_ioctl** %3, align 8
  %6 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %5, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  br i1 %9, label %10, label %32

10:                                               ; preds = %1
  %11 = load %struct.dm_ioctl*, %struct.dm_ioctl** %3, align 8
  %12 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %11, i32 0, i32 1
  %13 = load i8*, i8** %12, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %10
  %18 = load %struct.dm_ioctl*, %struct.dm_ioctl** %3, align 8
  %19 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17, %10
  store %struct.hash_cell* null, %struct.hash_cell** %2, align 8
  br label %115

23:                                               ; preds = %17
  %24 = load %struct.dm_ioctl*, %struct.dm_ioctl** %3, align 8
  %25 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = call %struct.hash_cell* @__get_uuid_cell(i8* %26)
  store %struct.hash_cell* %27, %struct.hash_cell** %4, align 8
  %28 = load %struct.hash_cell*, %struct.hash_cell** %4, align 8
  %29 = icmp ne %struct.hash_cell* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %23
  store %struct.hash_cell* null, %struct.hash_cell** %2, align 8
  br label %115

31:                                               ; preds = %23
  br label %70

32:                                               ; preds = %1
  %33 = load %struct.dm_ioctl*, %struct.dm_ioctl** %3, align 8
  %34 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = load i8, i8* %35, align 1
  %37 = icmp ne i8 %36, 0
  br i1 %37, label %38, label %53

38:                                               ; preds = %32
  %39 = load %struct.dm_ioctl*, %struct.dm_ioctl** %3, align 8
  %40 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store %struct.hash_cell* null, %struct.hash_cell** %2, align 8
  br label %115

44:                                               ; preds = %38
  %45 = load %struct.dm_ioctl*, %struct.dm_ioctl** %3, align 8
  %46 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = call %struct.hash_cell* @__get_name_cell(i8* %47)
  store %struct.hash_cell* %48, %struct.hash_cell** %4, align 8
  %49 = load %struct.hash_cell*, %struct.hash_cell** %4, align 8
  %50 = icmp ne %struct.hash_cell* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %44
  store %struct.hash_cell* null, %struct.hash_cell** %2, align 8
  br label %115

52:                                               ; preds = %44
  br label %69

53:                                               ; preds = %32
  %54 = load %struct.dm_ioctl*, %struct.dm_ioctl** %3, align 8
  %55 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %53
  %59 = load %struct.dm_ioctl*, %struct.dm_ioctl** %3, align 8
  %60 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = call %struct.hash_cell* @__get_dev_cell(i64 %61)
  store %struct.hash_cell* %62, %struct.hash_cell** %4, align 8
  %63 = load %struct.hash_cell*, %struct.hash_cell** %4, align 8
  %64 = icmp ne %struct.hash_cell* %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %58
  store %struct.hash_cell* null, %struct.hash_cell** %2, align 8
  br label %115

66:                                               ; preds = %58
  br label %68

67:                                               ; preds = %53
  store %struct.hash_cell* null, %struct.hash_cell** %2, align 8
  br label %115

68:                                               ; preds = %66
  br label %69

69:                                               ; preds = %68, %52
  br label %70

70:                                               ; preds = %69, %31
  %71 = load %struct.dm_ioctl*, %struct.dm_ioctl** %3, align 8
  %72 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %71, i32 0, i32 1
  %73 = load i8*, i8** %72, align 8
  %74 = load %struct.hash_cell*, %struct.hash_cell** %4, align 8
  %75 = getelementptr inbounds %struct.hash_cell, %struct.hash_cell* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @strlcpy(i8* %73, i64 %76, i32 8)
  %78 = load %struct.hash_cell*, %struct.hash_cell** %4, align 8
  %79 = getelementptr inbounds %struct.hash_cell, %struct.hash_cell* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %70
  %83 = load %struct.dm_ioctl*, %struct.dm_ioctl** %3, align 8
  %84 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = load %struct.hash_cell*, %struct.hash_cell** %4, align 8
  %87 = getelementptr inbounds %struct.hash_cell, %struct.hash_cell* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @strlcpy(i8* %85, i64 %88, i32 8)
  br label %95

90:                                               ; preds = %70
  %91 = load %struct.dm_ioctl*, %struct.dm_ioctl** %3, align 8
  %92 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 0
  store i8 0, i8* %94, align 1
  br label %95

95:                                               ; preds = %90, %82
  %96 = load %struct.hash_cell*, %struct.hash_cell** %4, align 8
  %97 = getelementptr inbounds %struct.hash_cell, %struct.hash_cell* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %95
  %101 = load i32, i32* @DM_INACTIVE_PRESENT_FLAG, align 4
  %102 = load %struct.dm_ioctl*, %struct.dm_ioctl** %3, align 8
  %103 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 8
  br label %113

106:                                              ; preds = %95
  %107 = load i32, i32* @DM_INACTIVE_PRESENT_FLAG, align 4
  %108 = xor i32 %107, -1
  %109 = load %struct.dm_ioctl*, %struct.dm_ioctl** %3, align 8
  %110 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = and i32 %111, %108
  store i32 %112, i32* %110, align 8
  br label %113

113:                                              ; preds = %106, %100
  %114 = load %struct.hash_cell*, %struct.hash_cell** %4, align 8
  store %struct.hash_cell* %114, %struct.hash_cell** %2, align 8
  br label %115

115:                                              ; preds = %113, %67, %65, %51, %43, %30, %22
  %116 = load %struct.hash_cell*, %struct.hash_cell** %2, align 8
  ret %struct.hash_cell* %116
}

declare dso_local %struct.hash_cell* @__get_uuid_cell(i8*) #1

declare dso_local %struct.hash_cell* @__get_name_cell(i8*) #1

declare dso_local %struct.hash_cell* @__get_dev_cell(i64) #1

declare dso_local i32 @strlcpy(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
