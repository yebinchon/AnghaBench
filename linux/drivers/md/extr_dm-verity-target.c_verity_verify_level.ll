; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-verity-target.c_verity_verify_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-verity-target.c_verity_verify_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_verity = type { i32, i32, i32 }
%struct.dm_verity_io = type { i32 }
%struct.dm_buffer = type { i32 }
%struct.buffer_aux = type { i32 }

@DM_VERITY_BLOCK_TYPE_METADATA = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_verity*, %struct.dm_verity_io*, i32, i32, i32, i32*)* @verity_verify_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verity_verify_level(%struct.dm_verity* %0, %struct.dm_verity_io* %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.dm_verity*, align 8
  %9 = alloca %struct.dm_verity_io*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.dm_buffer*, align 8
  %15 = alloca %struct.buffer_aux*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.dm_verity* %0, %struct.dm_verity** %8, align 8
  store %struct.dm_verity_io* %1, %struct.dm_verity_io** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %20 = load %struct.dm_verity*, %struct.dm_verity** %8, align 8
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %11, align 4
  %23 = call i32 @verity_hash_at_level(%struct.dm_verity* %20, i32 %21, i32 %22, i32* %18, i32* %19)
  %24 = load %struct.dm_verity*, %struct.dm_verity** %8, align 8
  %25 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %18, align 4
  %28 = call i32* @dm_bufio_read(i32 %26, i32 %27, %struct.dm_buffer** %14)
  store i32* %28, i32** %16, align 8
  %29 = load i32*, i32** %16, align 8
  %30 = call i64 @IS_ERR(i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %6
  %33 = load i32*, i32** %16, align 8
  %34 = call i32 @PTR_ERR(i32* %33)
  store i32 %34, i32* %7, align 4
  br label %120

35:                                               ; preds = %6
  %36 = load %struct.dm_buffer*, %struct.dm_buffer** %14, align 8
  %37 = call %struct.buffer_aux* @dm_bufio_get_aux_data(%struct.dm_buffer* %36)
  store %struct.buffer_aux* %37, %struct.buffer_aux** %15, align 8
  %38 = load %struct.buffer_aux*, %struct.buffer_aux** %15, align 8
  %39 = getelementptr inbounds %struct.buffer_aux, %struct.buffer_aux* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %105, label %42

42:                                               ; preds = %35
  %43 = load i32, i32* %12, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store i32 1, i32* %17, align 4
  br label %116

46:                                               ; preds = %42
  %47 = load %struct.dm_verity*, %struct.dm_verity** %8, align 8
  %48 = load %struct.dm_verity*, %struct.dm_verity** %8, align 8
  %49 = load %struct.dm_verity_io*, %struct.dm_verity_io** %9, align 8
  %50 = call i32 @verity_io_hash_req(%struct.dm_verity* %48, %struct.dm_verity_io* %49)
  %51 = load i32*, i32** %16, align 8
  %52 = load %struct.dm_verity*, %struct.dm_verity** %8, align 8
  %53 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = shl i32 1, %54
  %56 = load %struct.dm_verity*, %struct.dm_verity** %8, align 8
  %57 = load %struct.dm_verity_io*, %struct.dm_verity_io** %9, align 8
  %58 = call i32 @verity_io_real_digest(%struct.dm_verity* %56, %struct.dm_verity_io* %57)
  %59 = call i32 @verity_hash(%struct.dm_verity* %47, i32 %50, i32* %51, i32 %55, i32 %58)
  store i32 %59, i32* %17, align 4
  %60 = load i32, i32* %17, align 4
  %61 = icmp slt i32 %60, 0
  %62 = zext i1 %61 to i32
  %63 = call i64 @unlikely(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %46
  br label %116

66:                                               ; preds = %46
  %67 = load %struct.dm_verity*, %struct.dm_verity** %8, align 8
  %68 = load %struct.dm_verity_io*, %struct.dm_verity_io** %9, align 8
  %69 = call i32 @verity_io_real_digest(%struct.dm_verity* %67, %struct.dm_verity_io* %68)
  %70 = load i32*, i32** %13, align 8
  %71 = load %struct.dm_verity*, %struct.dm_verity** %8, align 8
  %72 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @memcmp(i32 %69, i32* %70, i32 %73)
  %75 = icmp eq i64 %74, 0
  %76 = zext i1 %75 to i32
  %77 = call i64 @likely(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %66
  %80 = load %struct.buffer_aux*, %struct.buffer_aux** %15, align 8
  %81 = getelementptr inbounds %struct.buffer_aux, %struct.buffer_aux* %80, i32 0, i32 0
  store i32 1, i32* %81, align 4
  br label %104

82:                                               ; preds = %66
  %83 = load %struct.dm_verity*, %struct.dm_verity** %8, align 8
  %84 = load %struct.dm_verity_io*, %struct.dm_verity_io** %9, align 8
  %85 = load i32, i32* @DM_VERITY_BLOCK_TYPE_METADATA, align 4
  %86 = load i32, i32* %18, align 4
  %87 = load i32*, i32** %16, align 8
  %88 = call i64 @verity_fec_decode(%struct.dm_verity* %83, %struct.dm_verity_io* %84, i32 %85, i32 %86, i32* %87, i32* null)
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %82
  %91 = load %struct.buffer_aux*, %struct.buffer_aux** %15, align 8
  %92 = getelementptr inbounds %struct.buffer_aux, %struct.buffer_aux* %91, i32 0, i32 0
  store i32 1, i32* %92, align 4
  br label %103

93:                                               ; preds = %82
  %94 = load %struct.dm_verity*, %struct.dm_verity** %8, align 8
  %95 = load i32, i32* @DM_VERITY_BLOCK_TYPE_METADATA, align 4
  %96 = load i32, i32* %18, align 4
  %97 = call i64 @verity_handle_err(%struct.dm_verity* %94, i32 %95, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %93
  %100 = load i32, i32* @EIO, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %17, align 4
  br label %116

102:                                              ; preds = %93
  br label %103

103:                                              ; preds = %102, %90
  br label %104

104:                                              ; preds = %103, %79
  br label %105

105:                                              ; preds = %104, %35
  %106 = load i32, i32* %19, align 4
  %107 = load i32*, i32** %16, align 8
  %108 = zext i32 %106 to i64
  %109 = getelementptr inbounds i32, i32* %107, i64 %108
  store i32* %109, i32** %16, align 8
  %110 = load i32*, i32** %13, align 8
  %111 = load i32*, i32** %16, align 8
  %112 = load %struct.dm_verity*, %struct.dm_verity** %8, align 8
  %113 = getelementptr inbounds %struct.dm_verity, %struct.dm_verity* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @memcpy(i32* %110, i32* %111, i32 %114)
  store i32 0, i32* %17, align 4
  br label %116

116:                                              ; preds = %105, %99, %65, %45
  %117 = load %struct.dm_buffer*, %struct.dm_buffer** %14, align 8
  %118 = call i32 @dm_bufio_release(%struct.dm_buffer* %117)
  %119 = load i32, i32* %17, align 4
  store i32 %119, i32* %7, align 4
  br label %120

120:                                              ; preds = %116, %32
  %121 = load i32, i32* %7, align 4
  ret i32 %121
}

declare dso_local i32 @verity_hash_at_level(%struct.dm_verity*, i32, i32, i32*, i32*) #1

declare dso_local i32* @dm_bufio_read(i32, i32, %struct.dm_buffer**) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local %struct.buffer_aux* @dm_bufio_get_aux_data(%struct.dm_buffer*) #1

declare dso_local i32 @verity_hash(%struct.dm_verity*, i32, i32*, i32, i32) #1

declare dso_local i32 @verity_io_hash_req(%struct.dm_verity*, %struct.dm_verity_io*) #1

declare dso_local i32 @verity_io_real_digest(%struct.dm_verity*, %struct.dm_verity_io*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @memcmp(i32, i32*, i32) #1

declare dso_local i64 @verity_fec_decode(%struct.dm_verity*, %struct.dm_verity_io*, i32, i32, i32*, i32*) #1

declare dso_local i64 @verity_handle_err(%struct.dm_verity*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @dm_bufio_release(%struct.dm_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
