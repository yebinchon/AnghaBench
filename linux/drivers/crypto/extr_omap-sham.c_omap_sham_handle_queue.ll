; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-sham.c_omap_sham_handle_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-sham.c_omap_sham_handle_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_sham_dev = type { i32, %struct.TYPE_2__*, %struct.ahash_request*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.ahash_request*, i32)* }
%struct.ahash_request = type { i32 }
%struct.crypto_async_request = type { i32 (%struct.crypto_async_request*, i32)* }
%struct.omap_sham_reqctx = type { i64, i32, i64, i32 }

@FLAGS_BUSY = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@OP_UPDATE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"handling new req, op: %lu, nbytes: %d\0A\00", align 1
@FLAGS_FINUP = common dso_local global i32 0, align 4
@OP_FINAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"exit, err: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_sham_dev*, %struct.ahash_request*)* @omap_sham_handle_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_sham_handle_queue(%struct.omap_sham_dev* %0, %struct.ahash_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.omap_sham_dev*, align 8
  %5 = alloca %struct.ahash_request*, align 8
  %6 = alloca %struct.crypto_async_request*, align 8
  %7 = alloca %struct.crypto_async_request*, align 8
  %8 = alloca %struct.omap_sham_reqctx*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.omap_sham_dev* %0, %struct.omap_sham_dev** %4, align 8
  store %struct.ahash_request* %1, %struct.ahash_request** %5, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %170, %2
  %13 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %4, align 8
  %14 = getelementptr inbounds %struct.omap_sham_dev, %struct.omap_sham_dev* %13, i32 0, i32 3
  %15 = load i64, i64* %9, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.ahash_request*, %struct.ahash_request** %5, align 8
  %18 = icmp ne %struct.ahash_request* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %12
  %20 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %4, align 8
  %21 = getelementptr inbounds %struct.omap_sham_dev, %struct.omap_sham_dev* %20, i32 0, i32 5
  %22 = load %struct.ahash_request*, %struct.ahash_request** %5, align 8
  %23 = call i32 @ahash_enqueue_request(i32* %21, %struct.ahash_request* %22)
  store i32 %23, i32* %11, align 4
  br label %24

24:                                               ; preds = %19, %12
  %25 = load i32, i32* @FLAGS_BUSY, align 4
  %26 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %4, align 8
  %27 = getelementptr inbounds %struct.omap_sham_dev, %struct.omap_sham_dev* %26, i32 0, i32 4
  %28 = call i64 @test_bit(i32 %25, i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %24
  %31 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %4, align 8
  %32 = getelementptr inbounds %struct.omap_sham_dev, %struct.omap_sham_dev* %31, i32 0, i32 3
  %33 = load i64, i64* %9, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* %32, i64 %33)
  %35 = load i32, i32* %11, align 4
  store i32 %35, i32* %3, align 4
  br label %176

36:                                               ; preds = %24
  %37 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %4, align 8
  %38 = getelementptr inbounds %struct.omap_sham_dev, %struct.omap_sham_dev* %37, i32 0, i32 5
  %39 = call %struct.crypto_async_request* @crypto_get_backlog(i32* %38)
  store %struct.crypto_async_request* %39, %struct.crypto_async_request** %7, align 8
  %40 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %4, align 8
  %41 = getelementptr inbounds %struct.omap_sham_dev, %struct.omap_sham_dev* %40, i32 0, i32 5
  %42 = call %struct.crypto_async_request* @crypto_dequeue_request(i32* %41)
  store %struct.crypto_async_request* %42, %struct.crypto_async_request** %6, align 8
  %43 = load %struct.crypto_async_request*, %struct.crypto_async_request** %6, align 8
  %44 = icmp ne %struct.crypto_async_request* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %36
  %46 = load i32, i32* @FLAGS_BUSY, align 4
  %47 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %4, align 8
  %48 = getelementptr inbounds %struct.omap_sham_dev, %struct.omap_sham_dev* %47, i32 0, i32 4
  %49 = call i32 @set_bit(i32 %46, i32* %48)
  br label %50

50:                                               ; preds = %45, %36
  %51 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %4, align 8
  %52 = getelementptr inbounds %struct.omap_sham_dev, %struct.omap_sham_dev* %51, i32 0, i32 3
  %53 = load i64, i64* %9, align 8
  %54 = call i32 @spin_unlock_irqrestore(i32* %52, i64 %53)
  %55 = load %struct.crypto_async_request*, %struct.crypto_async_request** %6, align 8
  %56 = icmp ne %struct.crypto_async_request* %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %50
  %58 = load i32, i32* %11, align 4
  store i32 %58, i32* %3, align 4
  br label %176

59:                                               ; preds = %50
  %60 = load %struct.crypto_async_request*, %struct.crypto_async_request** %7, align 8
  %61 = icmp ne %struct.crypto_async_request* %60, null
  br i1 %61, label %62, label %70

62:                                               ; preds = %59
  %63 = load %struct.crypto_async_request*, %struct.crypto_async_request** %7, align 8
  %64 = getelementptr inbounds %struct.crypto_async_request, %struct.crypto_async_request* %63, i32 0, i32 0
  %65 = load i32 (%struct.crypto_async_request*, i32)*, i32 (%struct.crypto_async_request*, i32)** %64, align 8
  %66 = load %struct.crypto_async_request*, %struct.crypto_async_request** %7, align 8
  %67 = load i32, i32* @EINPROGRESS, align 4
  %68 = sub nsw i32 0, %67
  %69 = call i32 %65(%struct.crypto_async_request* %66, i32 %68)
  br label %70

70:                                               ; preds = %62, %59
  %71 = load %struct.crypto_async_request*, %struct.crypto_async_request** %6, align 8
  %72 = call %struct.ahash_request* @ahash_request_cast(%struct.crypto_async_request* %71)
  store %struct.ahash_request* %72, %struct.ahash_request** %5, align 8
  %73 = load %struct.ahash_request*, %struct.ahash_request** %5, align 8
  %74 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %4, align 8
  %75 = getelementptr inbounds %struct.omap_sham_dev, %struct.omap_sham_dev* %74, i32 0, i32 2
  store %struct.ahash_request* %73, %struct.ahash_request** %75, align 8
  %76 = load %struct.ahash_request*, %struct.ahash_request** %5, align 8
  %77 = call %struct.omap_sham_reqctx* @ahash_request_ctx(%struct.ahash_request* %76)
  store %struct.omap_sham_reqctx* %77, %struct.omap_sham_reqctx** %8, align 8
  %78 = load %struct.ahash_request*, %struct.ahash_request** %5, align 8
  %79 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %8, align 8
  %80 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @OP_UPDATE, align 8
  %83 = icmp eq i64 %81, %82
  %84 = zext i1 %83 to i32
  %85 = call i32 @omap_sham_prepare_request(%struct.ahash_request* %78, i32 %84)
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* %10, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %93, label %88

88:                                               ; preds = %70
  %89 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %8, align 8
  %90 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %88, %70
  br label %160

94:                                               ; preds = %88
  %95 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %4, align 8
  %96 = getelementptr inbounds %struct.omap_sham_dev, %struct.omap_sham_dev* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %8, align 8
  %99 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = trunc i64 %100 to i32
  %102 = load %struct.ahash_request*, %struct.ahash_request** %5, align 8
  %103 = getelementptr inbounds %struct.ahash_request, %struct.ahash_request* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %97, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %101, i32 %104)
  %106 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %4, align 8
  %107 = call i32 @omap_sham_hw_init(%struct.omap_sham_dev* %106)
  store i32 %107, i32* %10, align 4
  %108 = load i32, i32* %10, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %94
  br label %160

111:                                              ; preds = %94
  %112 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %8, align 8
  %113 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %124

116:                                              ; preds = %111
  %117 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %4, align 8
  %118 = getelementptr inbounds %struct.omap_sham_dev, %struct.omap_sham_dev* %117, i32 0, i32 1
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = load i32 (%struct.ahash_request*, i32)*, i32 (%struct.ahash_request*, i32)** %120, align 8
  %122 = load %struct.ahash_request*, %struct.ahash_request** %5, align 8
  %123 = call i32 %121(%struct.ahash_request* %122, i32 0)
  br label %124

124:                                              ; preds = %116, %111
  %125 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %8, align 8
  %126 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @OP_UPDATE, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %149

130:                                              ; preds = %124
  %131 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %4, align 8
  %132 = call i32 @omap_sham_update_req(%struct.omap_sham_dev* %131)
  store i32 %132, i32* %10, align 4
  %133 = load i32, i32* %10, align 4
  %134 = load i32, i32* @EINPROGRESS, align 4
  %135 = sub nsw i32 0, %134
  %136 = icmp ne i32 %133, %135
  br i1 %136, label %137, label %148

137:                                              ; preds = %130
  %138 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %8, align 8
  %139 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @FLAGS_FINUP, align 4
  %142 = call i32 @BIT(i32 %141)
  %143 = and i32 %140, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %137
  %146 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %4, align 8
  %147 = call i32 @omap_sham_final_req(%struct.omap_sham_dev* %146)
  store i32 %147, i32* %10, align 4
  br label %148

148:                                              ; preds = %145, %137, %130
  br label %159

149:                                              ; preds = %124
  %150 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %8, align 8
  %151 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @OP_FINAL, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %158

155:                                              ; preds = %149
  %156 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %4, align 8
  %157 = call i32 @omap_sham_final_req(%struct.omap_sham_dev* %156)
  store i32 %157, i32* %10, align 4
  br label %158

158:                                              ; preds = %155, %149
  br label %159

159:                                              ; preds = %158, %148
  br label %160

160:                                              ; preds = %159, %110, %93
  %161 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %4, align 8
  %162 = getelementptr inbounds %struct.omap_sham_dev, %struct.omap_sham_dev* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* %10, align 4
  %165 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %163, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %164)
  %166 = load i32, i32* %10, align 4
  %167 = load i32, i32* @EINPROGRESS, align 4
  %168 = sub nsw i32 0, %167
  %169 = icmp ne i32 %166, %168
  br i1 %169, label %170, label %174

170:                                              ; preds = %160
  %171 = load %struct.ahash_request*, %struct.ahash_request** %5, align 8
  %172 = load i32, i32* %10, align 4
  %173 = call i32 @omap_sham_finish_req(%struct.ahash_request* %171, i32 %172)
  store %struct.ahash_request* null, %struct.ahash_request** %5, align 8
  br label %12

174:                                              ; preds = %160
  %175 = load i32, i32* %11, align 4
  store i32 %175, i32* %3, align 4
  br label %176

176:                                              ; preds = %174, %57, %30
  %177 = load i32, i32* %3, align 4
  ret i32 %177
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ahash_enqueue_request(i32*, %struct.ahash_request*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.crypto_async_request* @crypto_get_backlog(i32*) #1

declare dso_local %struct.crypto_async_request* @crypto_dequeue_request(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local %struct.ahash_request* @ahash_request_cast(%struct.crypto_async_request*) #1

declare dso_local %struct.omap_sham_reqctx* @ahash_request_ctx(%struct.ahash_request*) #1

declare dso_local i32 @omap_sham_prepare_request(%struct.ahash_request*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @omap_sham_hw_init(%struct.omap_sham_dev*) #1

declare dso_local i32 @omap_sham_update_req(%struct.omap_sham_dev*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @omap_sham_final_req(%struct.omap_sham_dev*) #1

declare dso_local i32 @omap_sham_finish_req(%struct.ahash_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
