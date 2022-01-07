; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_io.c_csk_wait_memory.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/chtls/extr_chtls_io.c_csk_wait_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chtls_dev = type { i32 }
%struct.sock = type { i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@wait = common dso_local global i32 0, align 4
@woken_wake_function = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@SOCKWQ_ASYNC_NOSPACE = common dso_local global i32 0, align 4
@SEND_SHUTDOWN = common dso_local global i32 0, align 4
@SOCK_NOSPACE = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@MAX_SCHEDULE_TIMEOUT = common dso_local global i64 0, align 8
@EPIPE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.chtls_dev*, %struct.sock*, i64*)* @csk_wait_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csk_wait_memory(%struct.chtls_dev* %0, %struct.sock* %1, i64* %2) #0 {
  %4 = alloca %struct.chtls_dev*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.chtls_dev* %0, %struct.chtls_dev** %4, align 8
  store %struct.sock* %1, %struct.sock** %5, align 8
  store i64* %2, i64** %6, align 8
  %11 = load i32, i32* @wait, align 4
  %12 = load i32, i32* @woken_wake_function, align 4
  %13 = call i32 @DEFINE_WAIT_FUNC(i32 %11, i32 %12)
  store i32 0, i32* %7, align 4
  store i64 0, i64* %9, align 8
  %14 = load i64*, i64** %6, align 8
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %8, align 8
  %16 = load i64*, i64** %6, align 8
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 0, i32 1
  store i32 %20, i32* %10, align 4
  %21 = load %struct.chtls_dev*, %struct.chtls_dev** %4, align 8
  %22 = load %struct.sock*, %struct.sock** %5, align 8
  %23 = call i64 @csk_mem_free(%struct.chtls_dev* %21, %struct.sock* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %3
  %26 = call i32 (...) @prandom_u32()
  %27 = load i32, i32* @HZ, align 4
  %28 = sdiv i32 %27, 5
  %29 = srem i32 %26, %28
  %30 = add nsw i32 %29, 2
  %31 = sext i32 %30 to i64
  store i64 %31, i64* %8, align 8
  %32 = call i32 (...) @prandom_u32()
  %33 = load i32, i32* @HZ, align 4
  %34 = sdiv i32 %33, 5
  %35 = srem i32 %32, %34
  %36 = add nsw i32 %35, 2
  %37 = sext i32 %36 to i64
  store i64 %37, i64* %9, align 8
  br label %38

38:                                               ; preds = %25, %3
  %39 = load %struct.sock*, %struct.sock** %5, align 8
  %40 = call i32 @sk_sleep(%struct.sock* %39)
  %41 = call i32 @add_wait_queue(i32 %40, i32* @wait)
  br label %42

42:                                               ; preds = %38, %152
  %43 = load i32, i32* @SOCKWQ_ASYNC_NOSPACE, align 4
  %44 = load %struct.sock*, %struct.sock** %5, align 8
  %45 = call i32 @sk_set_bit(i32 %43, %struct.sock* %44)
  %46 = load %struct.sock*, %struct.sock** %5, align 8
  %47 = getelementptr inbounds %struct.sock, %struct.sock* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %42
  %51 = load %struct.sock*, %struct.sock** %5, align 8
  %52 = getelementptr inbounds %struct.sock, %struct.sock* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @SEND_SHUTDOWN, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %50, %42
  br label %161

58:                                               ; preds = %50
  %59 = load i64*, i64** %6, align 8
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %73, label %62

62:                                               ; preds = %58
  %63 = load i32, i32* %10, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %62
  %66 = load i32, i32* @SOCK_NOSPACE, align 4
  %67 = load %struct.sock*, %struct.sock** %5, align 8
  %68 = getelementptr inbounds %struct.sock, %struct.sock* %67, i32 0, i32 3
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = call i32 @set_bit(i32 %66, i32* %70)
  br label %72

72:                                               ; preds = %65, %62
  br label %164

73:                                               ; preds = %58
  %74 = load i32, i32* @current, align 4
  %75 = call i64 @signal_pending(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  br label %167

78:                                               ; preds = %73
  %79 = load i32, i32* @SOCKWQ_ASYNC_NOSPACE, align 4
  %80 = load %struct.sock*, %struct.sock** %5, align 8
  %81 = call i32 @sk_clear_bit(i32 %79, %struct.sock* %80)
  %82 = load %struct.chtls_dev*, %struct.chtls_dev** %4, align 8
  %83 = load %struct.sock*, %struct.sock** %5, align 8
  %84 = call i64 @csk_mem_free(%struct.chtls_dev* %82, %struct.sock* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %78
  %87 = load i64, i64* %9, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %86
  br label %155

90:                                               ; preds = %86, %78
  %91 = load i32, i32* @SOCK_NOSPACE, align 4
  %92 = load %struct.sock*, %struct.sock** %5, align 8
  %93 = getelementptr inbounds %struct.sock, %struct.sock* %92, i32 0, i32 3
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = call i32 @set_bit(i32 %91, i32* %95)
  %97 = load %struct.sock*, %struct.sock** %5, align 8
  %98 = getelementptr inbounds %struct.sock, %struct.sock* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %98, align 4
  %101 = load %struct.sock*, %struct.sock** %5, align 8
  %102 = load %struct.sock*, %struct.sock** %5, align 8
  %103 = getelementptr inbounds %struct.sock, %struct.sock* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %124, label %106

106:                                              ; preds = %90
  %107 = load %struct.sock*, %struct.sock** %5, align 8
  %108 = getelementptr inbounds %struct.sock, %struct.sock* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @SEND_SHUTDOWN, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %124, label %113

113:                                              ; preds = %106
  %114 = load %struct.chtls_dev*, %struct.chtls_dev** %4, align 8
  %115 = load %struct.sock*, %struct.sock** %5, align 8
  %116 = call i64 @csk_mem_free(%struct.chtls_dev* %114, %struct.sock* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %113
  %119 = load i64, i64* %9, align 8
  %120 = icmp ne i64 %119, 0
  %121 = xor i1 %120, true
  br label %122

122:                                              ; preds = %118, %113
  %123 = phi i1 [ false, %113 ], [ %121, %118 ]
  br label %124

124:                                              ; preds = %122, %106, %90
  %125 = phi i1 [ true, %106 ], [ true, %90 ], [ %123, %122 ]
  %126 = zext i1 %125 to i32
  %127 = call i32 @sk_wait_event(%struct.sock* %101, i64* %8, i32 %126, i32* @wait)
  %128 = load %struct.sock*, %struct.sock** %5, align 8
  %129 = getelementptr inbounds %struct.sock, %struct.sock* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %130, -1
  store i32 %131, i32* %129, align 4
  %132 = load i64, i64* %9, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %152

134:                                              ; preds = %124
  %135 = load i64, i64* %8, align 8
  %136 = load i64, i64* %9, align 8
  %137 = sub nsw i64 %136, %135
  store i64 %137, i64* %9, align 8
  %138 = load i64*, i64** %6, align 8
  %139 = load i64, i64* %138, align 8
  store i64 %139, i64* %8, align 8
  %140 = load i64, i64* %8, align 8
  %141 = load i64, i64* @MAX_SCHEDULE_TIMEOUT, align 8
  %142 = icmp ne i64 %140, %141
  br i1 %142, label %143, label %151

143:                                              ; preds = %134
  %144 = load i64, i64* %9, align 8
  %145 = load i64, i64* %8, align 8
  %146 = sub nsw i64 %145, %144
  store i64 %146, i64* %8, align 8
  %147 = load i64, i64* %8, align 8
  %148 = icmp slt i64 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %143
  store i64 0, i64* %8, align 8
  br label %150

150:                                              ; preds = %149, %143
  br label %151

151:                                              ; preds = %150, %134
  store i64 0, i64* %9, align 8
  br label %152

152:                                              ; preds = %151, %124
  %153 = load i64, i64* %8, align 8
  %154 = load i64*, i64** %6, align 8
  store i64 %153, i64* %154, align 8
  br label %42

155:                                              ; preds = %89
  br label %156

156:                                              ; preds = %167, %164, %161, %155
  %157 = load %struct.sock*, %struct.sock** %5, align 8
  %158 = call i32 @sk_sleep(%struct.sock* %157)
  %159 = call i32 @remove_wait_queue(i32 %158, i32* @wait)
  %160 = load i32, i32* %7, align 4
  ret i32 %160

161:                                              ; preds = %57
  %162 = load i32, i32* @EPIPE, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %7, align 4
  br label %156

164:                                              ; preds = %72
  %165 = load i32, i32* @EAGAIN, align 4
  %166 = sub nsw i32 0, %165
  store i32 %166, i32* %7, align 4
  br label %156

167:                                              ; preds = %77
  %168 = load i64*, i64** %6, align 8
  %169 = load i64, i64* %168, align 8
  %170 = call i32 @sock_intr_errno(i64 %169)
  store i32 %170, i32* %7, align 4
  br label %156
}

declare dso_local i32 @DEFINE_WAIT_FUNC(i32, i32) #1

declare dso_local i64 @csk_mem_free(%struct.chtls_dev*, %struct.sock*) #1

declare dso_local i32 @prandom_u32(...) #1

declare dso_local i32 @add_wait_queue(i32, i32*) #1

declare dso_local i32 @sk_sleep(%struct.sock*) #1

declare dso_local i32 @sk_set_bit(i32, %struct.sock*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @sk_clear_bit(i32, %struct.sock*) #1

declare dso_local i32 @sk_wait_event(%struct.sock*, i64*, i32, i32*) #1

declare dso_local i32 @remove_wait_queue(i32, i32*) #1

declare dso_local i32 @sock_intr_errno(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
