; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-integrity.c_dm_integrity_rw_tag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-integrity.c_dm_integrity_rw_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_integrity_c = type { i32, i32 }
%struct.dm_buffer = type { i32 }

@SECTOR_SHIFT = common dso_local global i32 0, align 4
@TAG_READ = common dso_local global i32 0, align 4
@TAG_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_integrity_c*, i8*, i32*, i32*, i32, i32)* @dm_integrity_rw_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dm_integrity_rw_tag(%struct.dm_integrity_c* %0, i8* %1, i32* %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.dm_integrity_c*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.dm_buffer*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.dm_integrity_c* %0, %struct.dm_integrity_c** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  br label %20

20:                                               ; preds = %154, %6
  %21 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %8, align 8
  %22 = call i32 @dm_integrity_failed(%struct.dm_integrity_c* %21)
  store i32 %22, i32* %18, align 4
  %23 = load i32, i32* %18, align 4
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* %18, align 4
  store i32 %27, i32* %7, align 4
  br label %159

28:                                               ; preds = %20
  %29 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %8, align 8
  %30 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %10, align 8
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @dm_bufio_read(i32 %31, i32 %33, %struct.dm_buffer** %16)
  store i8* %34, i8** %14, align 8
  %35 = load i8*, i8** %14, align 8
  %36 = call i64 @IS_ERR(i8* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %28
  %39 = load i8*, i8** %14, align 8
  %40 = call i32 @PTR_ERR(i8* %39)
  store i32 %40, i32* %7, align 4
  br label %159

41:                                               ; preds = %28
  %42 = load i32, i32* @SECTOR_SHIFT, align 4
  %43 = shl i32 1, %42
  %44 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %8, align 8
  %45 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = shl i32 %43, %46
  %48 = load i32*, i32** %11, align 8
  %49 = load i32, i32* %48, align 4
  %50 = sub i32 %47, %49
  %51 = load i32, i32* %12, align 4
  %52 = call i32 @min(i32 %50, i32 %51)
  store i32 %52, i32* %17, align 4
  %53 = load i8*, i8** %14, align 8
  %54 = load i32*, i32** %11, align 8
  %55 = load i32, i32* %54, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %53, i64 %56
  store i8* %57, i8** %15, align 8
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* @TAG_READ, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %41
  %62 = load i8*, i8** %9, align 8
  %63 = load i8*, i8** %15, align 8
  %64 = load i32, i32* %17, align 4
  %65 = call i32 @memcpy(i8* %62, i8* %63, i32 %64)
  br label %122

66:                                               ; preds = %41
  %67 = load i32, i32* %13, align 4
  %68 = load i32, i32* @TAG_WRITE, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %83

70:                                               ; preds = %66
  %71 = load i8*, i8** %15, align 8
  %72 = load i8*, i8** %9, align 8
  %73 = load i32, i32* %17, align 4
  %74 = call i32 @memcpy(i8* %71, i8* %72, i32 %73)
  %75 = load %struct.dm_buffer*, %struct.dm_buffer** %16, align 8
  %76 = load i32*, i32** %11, align 8
  %77 = load i32, i32* %76, align 4
  %78 = load i32*, i32** %11, align 8
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %17, align 4
  %81 = add i32 %79, %80
  %82 = call i32 @dm_bufio_mark_partial_buffer_dirty(%struct.dm_buffer* %75, i32 %77, i32 %81)
  br label %121

83:                                               ; preds = %66
  %84 = load i8*, i8** %15, align 8
  %85 = load i8*, i8** %9, align 8
  %86 = load i32, i32* %17, align 4
  %87 = call i32 @memcmp(i8* %84, i8* %85, i32 %86)
  %88 = call i64 @unlikely(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %120

90:                                               ; preds = %83
  store i32 0, i32* %19, align 4
  br label %91

91:                                               ; preds = %113, %90
  %92 = load i32, i32* %19, align 4
  %93 = load i32, i32* %17, align 4
  %94 = icmp ult i32 %92, %93
  br i1 %94, label %95, label %116

95:                                               ; preds = %91
  %96 = load i8*, i8** %15, align 8
  %97 = load i32, i32* %19, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %96, i64 %98
  %100 = load i8, i8* %99, align 1
  %101 = zext i8 %100 to i32
  %102 = load i8*, i8** %9, align 8
  %103 = load i32, i32* %19, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %102, i64 %104
  %106 = load i8, i8* %105, align 1
  %107 = zext i8 %106 to i32
  %108 = icmp ne i32 %101, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %95
  br label %116

110:                                              ; preds = %95
  %111 = load i32, i32* %12, align 4
  %112 = add i32 %111, -1
  store i32 %112, i32* %12, align 4
  br label %113

113:                                              ; preds = %110
  %114 = load i32, i32* %19, align 4
  %115 = add i32 %114, 1
  store i32 %115, i32* %19, align 4
  br label %91

116:                                              ; preds = %109, %91
  %117 = load %struct.dm_buffer*, %struct.dm_buffer** %16, align 8
  %118 = call i32 @dm_bufio_release(%struct.dm_buffer* %117)
  %119 = load i32, i32* %12, align 4
  store i32 %119, i32* %7, align 4
  br label %159

120:                                              ; preds = %83
  br label %121

121:                                              ; preds = %120, %70
  br label %122

122:                                              ; preds = %121, %61
  %123 = load %struct.dm_buffer*, %struct.dm_buffer** %16, align 8
  %124 = call i32 @dm_bufio_release(%struct.dm_buffer* %123)
  %125 = load i32, i32* %17, align 4
  %126 = load i8*, i8** %9, align 8
  %127 = zext i32 %125 to i64
  %128 = getelementptr inbounds i8, i8* %126, i64 %127
  store i8* %128, i8** %9, align 8
  %129 = load i32, i32* %17, align 4
  %130 = load i32*, i32** %11, align 8
  %131 = load i32, i32* %130, align 4
  %132 = add i32 %131, %129
  store i32 %132, i32* %130, align 4
  %133 = load i32*, i32** %11, align 8
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @SECTOR_SHIFT, align 4
  %136 = shl i32 1, %135
  %137 = load %struct.dm_integrity_c*, %struct.dm_integrity_c** %8, align 8
  %138 = getelementptr inbounds %struct.dm_integrity_c, %struct.dm_integrity_c* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = shl i32 %136, %139
  %141 = icmp eq i32 %134, %140
  %142 = zext i1 %141 to i32
  %143 = call i64 @unlikely(i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %122
  %146 = load i32*, i32** %10, align 8
  %147 = load i32, i32* %146, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %146, align 4
  %149 = load i32*, i32** %11, align 8
  store i32 0, i32* %149, align 4
  br label %150

150:                                              ; preds = %145, %122
  %151 = load i32, i32* %17, align 4
  %152 = load i32, i32* %12, align 4
  %153 = sub i32 %152, %151
  store i32 %153, i32* %12, align 4
  br label %154

154:                                              ; preds = %150
  %155 = load i32, i32* %12, align 4
  %156 = call i64 @unlikely(i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %20, label %158

158:                                              ; preds = %154
  store i32 0, i32* %7, align 4
  br label %159

159:                                              ; preds = %158, %116, %38, %26
  %160 = load i32, i32* %7, align 4
  ret i32 %160
}

declare dso_local i32 @dm_integrity_failed(%struct.dm_integrity_c*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i8* @dm_bufio_read(i32, i32, %struct.dm_buffer**) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @dm_bufio_mark_partial_buffer_dirty(%struct.dm_buffer*, i32, i32) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @dm_bufio_release(%struct.dm_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
