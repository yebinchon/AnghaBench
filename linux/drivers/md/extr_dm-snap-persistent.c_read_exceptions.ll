; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-snap-persistent.c_read_exceptions.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-snap-persistent.c_read_exceptions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pstore = type { i64, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.dm_bufio_client = type opaque
%struct.dm_buffer = type { i32 }
%struct.TYPE_4__ = type { i32 }

@SECTOR_SHIFT = common dso_local global i32 0, align 4
@DM_PREFETCH_CHUNKS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pstore*, i32 (i8*, i64, i64)*, i8*)* @read_exceptions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_exceptions(%struct.pstore* %0, i32 (i8*, i64, i64)* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pstore*, align 8
  %6 = alloca i32 (i8*, i64, i64)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.dm_bufio_client*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.dm_buffer*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.pstore* %0, %struct.pstore** %5, align 8
  store i32 (i8*, i64, i64)* %1, i32 (i8*, i64, i64)** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 1, i32* %9, align 4
  store i64 0, i64* %11, align 8
  %16 = load %struct.pstore*, %struct.pstore** %5, align 8
  %17 = getelementptr inbounds %struct.pstore, %struct.pstore* %16, i32 0, i32 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.TYPE_4__* @dm_snap_cow(i32 %20)
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.pstore*, %struct.pstore** %5, align 8
  %25 = getelementptr inbounds %struct.pstore, %struct.pstore* %24, i32 0, i32 1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @SECTOR_SHIFT, align 4
  %30 = shl i32 %28, %29
  %31 = call i8* @dm_bufio_client_create(i32 %23, i32 %30, i32 1, i32 0, i32* null, i32* null)
  %32 = bitcast i8* %31 to %struct.dm_bufio_client*
  store %struct.dm_bufio_client* %32, %struct.dm_bufio_client** %10, align 8
  %33 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %10, align 8
  %34 = bitcast %struct.dm_bufio_client* %33 to i8*
  %35 = call i64 @IS_ERR(i8* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %3
  %38 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %10, align 8
  %39 = bitcast %struct.dm_bufio_client* %38 to i8*
  %40 = call i32 @PTR_ERR(i8* %39)
  store i32 %40, i32* %4, align 4
  br label %172

41:                                               ; preds = %3
  %42 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %10, align 8
  %43 = bitcast %struct.dm_bufio_client* %42 to i8*
  %44 = load i64, i64* @DM_PREFETCH_CHUNKS, align 8
  %45 = add nsw i64 1, %44
  %46 = call i32 @dm_bufio_set_minimum_buffers(i8* %43, i64 %45)
  %47 = load %struct.pstore*, %struct.pstore** %5, align 8
  %48 = getelementptr inbounds %struct.pstore, %struct.pstore* %47, i32 0, i32 0
  store i64 0, i64* %48, align 8
  br label %49

49:                                               ; preds = %155, %41
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %160

52:                                               ; preds = %49
  %53 = load i64, i64* %11, align 8
  %54 = load %struct.pstore*, %struct.pstore** %5, align 8
  %55 = getelementptr inbounds %struct.pstore, %struct.pstore* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp slt i64 %53, %56
  %58 = zext i1 %57 to i32
  %59 = call i64 @unlikely(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %52
  %62 = load %struct.pstore*, %struct.pstore** %5, align 8
  %63 = getelementptr inbounds %struct.pstore, %struct.pstore* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %11, align 8
  br label %65

65:                                               ; preds = %61, %52
  %66 = load i64, i64* @DM_PREFETCH_CHUNKS, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %106

68:                                               ; preds = %65
  br label %69

69:                                               ; preds = %97, %68
  %70 = load %struct.pstore*, %struct.pstore** %5, align 8
  %71 = load i64, i64* %11, align 8
  %72 = call i64 @area_location(%struct.pstore* %70, i64 %71)
  store i64 %72, i64* %15, align 8
  %73 = load i64, i64* %15, align 8
  %74 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %10, align 8
  %75 = bitcast %struct.dm_bufio_client* %74 to i8*
  %76 = call i64 @dm_bufio_get_device_size(i8* %75)
  %77 = icmp sge i64 %73, %76
  %78 = zext i1 %77 to i32
  %79 = call i64 @unlikely(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %69
  br label %105

82:                                               ; preds = %69
  %83 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %10, align 8
  %84 = bitcast %struct.dm_bufio_client* %83 to i8*
  %85 = load i64, i64* %15, align 8
  %86 = call i32 @dm_bufio_prefetch(i8* %84, i64 %85, i32 1)
  %87 = load i64, i64* %11, align 8
  %88 = add nsw i64 %87, 1
  store i64 %88, i64* %11, align 8
  %89 = load i64, i64* %11, align 8
  %90 = icmp ne i64 %89, 0
  %91 = xor i1 %90, true
  %92 = zext i1 %91 to i32
  %93 = call i64 @unlikely(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %82
  br label %105

96:                                               ; preds = %82
  br label %97

97:                                               ; preds = %96
  %98 = load i64, i64* %11, align 8
  %99 = load %struct.pstore*, %struct.pstore** %5, align 8
  %100 = getelementptr inbounds %struct.pstore, %struct.pstore* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @DM_PREFETCH_CHUNKS, align 8
  %103 = add nsw i64 %101, %102
  %104 = icmp sle i64 %98, %103
  br i1 %104, label %69, label %105

105:                                              ; preds = %97, %95, %81
  br label %106

106:                                              ; preds = %105, %65
  %107 = load %struct.pstore*, %struct.pstore** %5, align 8
  %108 = load %struct.pstore*, %struct.pstore** %5, align 8
  %109 = getelementptr inbounds %struct.pstore, %struct.pstore* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = call i64 @area_location(%struct.pstore* %107, i64 %110)
  store i64 %111, i64* %14, align 8
  %112 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %10, align 8
  %113 = bitcast %struct.dm_bufio_client* %112 to i8*
  %114 = load i64, i64* %14, align 8
  %115 = call i8* @dm_bufio_read(i8* %113, i64 %114, %struct.dm_buffer** %12)
  store i8* %115, i8** %13, align 8
  %116 = load i8*, i8** %13, align 8
  %117 = call i64 @IS_ERR(i8* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %106
  %120 = load i8*, i8** %13, align 8
  %121 = call i32 @PTR_ERR(i8* %120)
  store i32 %121, i32* %8, align 4
  br label %167

122:                                              ; preds = %106
  %123 = load %struct.pstore*, %struct.pstore** %5, align 8
  %124 = load i8*, i8** %13, align 8
  %125 = load i32 (i8*, i64, i64)*, i32 (i8*, i64, i64)** %6, align 8
  %126 = load i8*, i8** %7, align 8
  %127 = call i32 @insert_exceptions(%struct.pstore* %123, i8* %124, i32 (i8*, i64, i64)* %125, i8* %126, i32* %9)
  store i32 %127, i32* %8, align 4
  %128 = load i32, i32* %9, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %143, label %130

130:                                              ; preds = %122
  %131 = load %struct.pstore*, %struct.pstore** %5, align 8
  %132 = getelementptr inbounds %struct.pstore, %struct.pstore* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = load i8*, i8** %13, align 8
  %135 = load %struct.pstore*, %struct.pstore** %5, align 8
  %136 = getelementptr inbounds %struct.pstore, %struct.pstore* %135, i32 0, i32 1
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @SECTOR_SHIFT, align 4
  %141 = shl i32 %139, %140
  %142 = call i32 @memcpy(i32 %133, i8* %134, i32 %141)
  br label %143

143:                                              ; preds = %130, %122
  %144 = load %struct.dm_buffer*, %struct.dm_buffer** %12, align 8
  %145 = call i32 @dm_bufio_release(%struct.dm_buffer* %144)
  %146 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %10, align 8
  %147 = bitcast %struct.dm_bufio_client* %146 to i8*
  %148 = load i64, i64* %14, align 8
  %149 = call i32 @dm_bufio_forget(i8* %147, i64 %148)
  %150 = load i32, i32* %8, align 4
  %151 = call i64 @unlikely(i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %143
  br label %167

154:                                              ; preds = %143
  br label %155

155:                                              ; preds = %154
  %156 = load %struct.pstore*, %struct.pstore** %5, align 8
  %157 = getelementptr inbounds %struct.pstore, %struct.pstore* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = add nsw i64 %158, 1
  store i64 %159, i64* %157, align 8
  br label %49

160:                                              ; preds = %49
  %161 = load %struct.pstore*, %struct.pstore** %5, align 8
  %162 = getelementptr inbounds %struct.pstore, %struct.pstore* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = add nsw i64 %163, -1
  store i64 %164, i64* %162, align 8
  %165 = load %struct.pstore*, %struct.pstore** %5, align 8
  %166 = call i32 @skip_metadata(%struct.pstore* %165)
  store i32 0, i32* %8, align 4
  br label %167

167:                                              ; preds = %160, %153, %119
  %168 = load %struct.dm_bufio_client*, %struct.dm_bufio_client** %10, align 8
  %169 = bitcast %struct.dm_bufio_client* %168 to i8*
  %170 = call i32 @dm_bufio_client_destroy(i8* %169)
  %171 = load i32, i32* %8, align 4
  store i32 %171, i32* %4, align 4
  br label %172

172:                                              ; preds = %167, %37
  %173 = load i32, i32* %4, align 4
  ret i32 %173
}

declare dso_local i8* @dm_bufio_client_create(i32, i32, i32, i32, i32*, i32*) #1

declare dso_local %struct.TYPE_4__* @dm_snap_cow(i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @dm_bufio_set_minimum_buffers(i8*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @area_location(%struct.pstore*, i64) #1

declare dso_local i64 @dm_bufio_get_device_size(i8*) #1

declare dso_local i32 @dm_bufio_prefetch(i8*, i64, i32) #1

declare dso_local i8* @dm_bufio_read(i8*, i64, %struct.dm_buffer**) #1

declare dso_local i32 @insert_exceptions(%struct.pstore*, i8*, i32 (i8*, i64, i64)*, i8*, i32*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @dm_bufio_release(%struct.dm_buffer*) #1

declare dso_local i32 @dm_bufio_forget(i8*, i64) #1

declare dso_local i32 @skip_metadata(%struct.pstore*) #1

declare dso_local i32 @dm_bufio_client_destroy(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
