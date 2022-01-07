; ModuleID = '/home/carl/AnghaBench/linux/drivers/iio/humidity/extr_dht11.c_dht11_decode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iio/humidity/extr_dht11.c_dht11_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dht11 = type { i8, i8, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@DHT11_BITS_PER_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"lost synchronisation at edge %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@DHT11_THRESHOLD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"invalid checksum\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Don't know how to decode data: %d %d %d %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dht11*, i32)* @dht11_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dht11_decode(%struct.dht11* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dht11*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i32, align 4
  store %struct.dht11* %0, %struct.dht11** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load i32, i32* @DHT11_BITS_PER_READ, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %8, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %9, align 8
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %84, %2
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @DHT11_BITS_PER_READ, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %87

24:                                               ; preds = %20
  %25 = load %struct.dht11*, %struct.dht11** %4, align 8
  %26 = getelementptr inbounds %struct.dht11, %struct.dht11* %25, i32 0, i32 4
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %6, align 4
  %30 = mul nsw i32 2, %29
  %31 = add nsw i32 %28, %30
  %32 = add nsw i32 %31, 2
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.dht11*, %struct.dht11** %4, align 8
  %38 = getelementptr inbounds %struct.dht11, %struct.dht11* %37, i32 0, i32 4
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %6, align 4
  %42 = mul nsw i32 2, %41
  %43 = add nsw i32 %40, %42
  %44 = add nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = sub nsw i32 %36, %48
  store i32 %49, i32* %7, align 4
  %50 = load %struct.dht11*, %struct.dht11** %4, align 8
  %51 = getelementptr inbounds %struct.dht11, %struct.dht11* %50, i32 0, i32 4
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* %6, align 4
  %55 = mul nsw i32 2, %54
  %56 = add nsw i32 %53, %55
  %57 = add nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %75, label %63

63:                                               ; preds = %24
  %64 = load %struct.dht11*, %struct.dht11** %4, align 8
  %65 = getelementptr inbounds %struct.dht11, %struct.dht11* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* %6, align 4
  %69 = mul nsw i32 2, %68
  %70 = add nsw i32 %67, %69
  %71 = add nsw i32 %70, 1
  %72 = call i32 (i32, i8*, ...) @dev_dbg(i32 %66, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* @EIO, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %188

75:                                               ; preds = %24
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* @DHT11_THRESHOLD, align 4
  %78 = icmp sgt i32 %76, %77
  %79 = zext i1 %78 to i32
  %80 = trunc i32 %79 to i8
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %19, i64 %82
  store i8 %80, i8* %83, align 1
  br label %84

84:                                               ; preds = %75
  %85 = load i32, i32* %6, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %6, align 4
  br label %20

87:                                               ; preds = %20
  %88 = call zeroext i8 @dht11_decode_byte(i8* %19)
  store i8 %88, i8* %12, align 1
  %89 = getelementptr inbounds i8, i8* %19, i64 8
  %90 = call zeroext i8 @dht11_decode_byte(i8* %89)
  store i8 %90, i8* %13, align 1
  %91 = getelementptr inbounds i8, i8* %19, i64 16
  %92 = call zeroext i8 @dht11_decode_byte(i8* %91)
  store i8 %92, i8* %10, align 1
  %93 = getelementptr inbounds i8, i8* %19, i64 24
  %94 = call zeroext i8 @dht11_decode_byte(i8* %93)
  store i8 %94, i8* %11, align 1
  %95 = getelementptr inbounds i8, i8* %19, i64 32
  %96 = call zeroext i8 @dht11_decode_byte(i8* %95)
  store i8 %96, i8* %14, align 1
  %97 = load i8, i8* %12, align 1
  %98 = zext i8 %97 to i32
  %99 = load i8, i8* %13, align 1
  %100 = zext i8 %99 to i32
  %101 = add nsw i32 %98, %100
  %102 = load i8, i8* %10, align 1
  %103 = zext i8 %102 to i32
  %104 = add nsw i32 %101, %103
  %105 = load i8, i8* %11, align 1
  %106 = zext i8 %105 to i32
  %107 = add nsw i32 %104, %106
  %108 = and i32 %107, 255
  %109 = load i8, i8* %14, align 1
  %110 = zext i8 %109 to i32
  %111 = icmp ne i32 %108, %110
  br i1 %111, label %112, label %119

112:                                              ; preds = %87
  %113 = load %struct.dht11*, %struct.dht11** %4, align 8
  %114 = getelementptr inbounds %struct.dht11, %struct.dht11* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = call i32 (i32, i8*, ...) @dev_dbg(i32 %115, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %117 = load i32, i32* @EIO, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %188

119:                                              ; preds = %87
  %120 = call i32 (...) @ktime_get_boottime_ns()
  %121 = load %struct.dht11*, %struct.dht11** %4, align 8
  %122 = getelementptr inbounds %struct.dht11, %struct.dht11* %121, i32 0, i32 3
  store i32 %120, i32* %122, align 8
  %123 = load i8, i8* %12, align 1
  %124 = zext i8 %123 to i32
  %125 = icmp slt i32 %124, 4
  br i1 %125, label %126, label %154

126:                                              ; preds = %119
  %127 = load i8, i8* %10, align 1
  %128 = zext i8 %127 to i32
  %129 = and i32 %128, 127
  %130 = shl i32 %129, 8
  %131 = load i8, i8* %11, align 1
  %132 = zext i8 %131 to i32
  %133 = add nsw i32 %130, %132
  %134 = load i8, i8* %10, align 1
  %135 = zext i8 %134 to i32
  %136 = and i32 %135, 128
  %137 = icmp ne i32 %136, 0
  %138 = zext i1 %137 to i64
  %139 = select i1 %137, i32 -100, i32 100
  %140 = mul nsw i32 %133, %139
  %141 = trunc i32 %140 to i8
  %142 = load %struct.dht11*, %struct.dht11** %4, align 8
  %143 = getelementptr inbounds %struct.dht11, %struct.dht11* %142, i32 0, i32 0
  store i8 %141, i8* %143, align 8
  %144 = load i8, i8* %12, align 1
  %145 = zext i8 %144 to i32
  %146 = shl i32 %145, 8
  %147 = load i8, i8* %13, align 1
  %148 = zext i8 %147 to i32
  %149 = add nsw i32 %146, %148
  %150 = mul nsw i32 %149, 100
  %151 = trunc i32 %150 to i8
  %152 = load %struct.dht11*, %struct.dht11** %4, align 8
  %153 = getelementptr inbounds %struct.dht11, %struct.dht11* %152, i32 0, i32 1
  store i8 %151, i8* %153, align 1
  br label %187

154:                                              ; preds = %119
  %155 = load i8, i8* %11, align 1
  %156 = zext i8 %155 to i32
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %175

158:                                              ; preds = %154
  %159 = load i8, i8* %13, align 1
  %160 = zext i8 %159 to i32
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %175

162:                                              ; preds = %158
  %163 = load i8, i8* %10, align 1
  %164 = zext i8 %163 to i32
  %165 = mul nsw i32 %164, 1000
  %166 = trunc i32 %165 to i8
  %167 = load %struct.dht11*, %struct.dht11** %4, align 8
  %168 = getelementptr inbounds %struct.dht11, %struct.dht11* %167, i32 0, i32 0
  store i8 %166, i8* %168, align 8
  %169 = load i8, i8* %12, align 1
  %170 = zext i8 %169 to i32
  %171 = mul nsw i32 %170, 1000
  %172 = trunc i32 %171 to i8
  %173 = load %struct.dht11*, %struct.dht11** %4, align 8
  %174 = getelementptr inbounds %struct.dht11, %struct.dht11* %173, i32 0, i32 1
  store i8 %172, i8* %174, align 1
  br label %186

175:                                              ; preds = %158, %154
  %176 = load %struct.dht11*, %struct.dht11** %4, align 8
  %177 = getelementptr inbounds %struct.dht11, %struct.dht11* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 4
  %179 = load i8, i8* %12, align 1
  %180 = load i8, i8* %13, align 1
  %181 = load i8, i8* %10, align 1
  %182 = load i8, i8* %11, align 1
  %183 = call i32 @dev_err(i32 %178, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i8 zeroext %179, i8 zeroext %180, i8 zeroext %181, i8 zeroext %182)
  %184 = load i32, i32* @EIO, align 4
  %185 = sub nsw i32 0, %184
  store i32 %185, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %188

186:                                              ; preds = %162
  br label %187

187:                                              ; preds = %186, %126
  store i32 0, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %188

188:                                              ; preds = %187, %175, %112, %63
  %189 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %189)
  %190 = load i32, i32* %3, align 4
  ret i32 %190
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #2

declare dso_local zeroext i8 @dht11_decode_byte(i8*) #2

declare dso_local i32 @ktime_get_boottime_ns(...) #2

declare dso_local i32 @dev_err(i32, i8*, i8 zeroext, i8 zeroext, i8 zeroext, i8 zeroext) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
