; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_ud_header.c_ib_ud_header_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_ud_header.c_ib_ud_header_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_ud_header = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_12__ = type { i32, i64, i32 }
%struct.TYPE_11__ = type { i8* }
%struct.TYPE_10__ = type { i32, i32, i32, i8* }
%struct.TYPE_9__ = type { i32, i32, i8* }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_7__ = type { i8*, i32, i64 }

@IB_UDP_BYTES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IB_LNH_IBA_GLOBAL = common dso_local global i32 0, align 4
@IB_LNH_IBA_LOCAL = common dso_local global i32 0, align 4
@IB_LRH_BYTES = common dso_local global i32 0, align 4
@IB_BTH_BYTES = common dso_local global i32 0, align 4
@IB_DETH_BYTES = common dso_local global i32 0, align 4
@IB_GRH_BYTES = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@IB_IP4_BYTES = common dso_local global i64 0, align 8
@IB_OPCODE_UD_SEND_ONLY_WITH_IMMEDIATE = common dso_local global i32 0, align 4
@IB_OPCODE_UD_SEND_ONLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_ud_header_init(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, %struct.ib_ud_header* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.ib_ud_header*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store i32 %0, i32* %11, align 4
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store %struct.ib_ud_header* %8, %struct.ib_ud_header** %19, align 8
  %22 = load i32, i32* %17, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %9
  %25 = load i32, i32* @IB_UDP_BYTES, align 4
  br label %27

26:                                               ; preds = %9
  br label %27

27:                                               ; preds = %26, %24
  %28 = phi i32 [ %25, %24 ], [ 0, %26 ]
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %20, align 8
  %30 = load i32, i32* %15, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load i32, i32* %16, align 4
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  br label %36

36:                                               ; preds = %32, %27
  %37 = phi i1 [ false, %27 ], [ %35, %32 ]
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %15, align 4
  %39 = load %struct.ib_ud_header*, %struct.ib_ud_header** %19, align 8
  %40 = call i32 @memset(%struct.ib_ud_header* %39, i32 0, i32 136)
  %41 = load i32, i32* %17, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %36
  %44 = load i32, i32* %16, align 4
  %45 = icmp ne i32 %44, 4
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = load i32, i32* %16, align 4
  %48 = icmp ne i32 %47, 6
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %10, align 4
  br label %244

52:                                               ; preds = %46, %43, %36
  %53 = load i32, i32* %12, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %93

55:                                               ; preds = %52
  %56 = load %struct.ib_ud_header*, %struct.ib_ud_header** %19, align 8
  %57 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %56, i32 0, i32 12
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 2
  store i64 0, i64* %58, align 8
  %59 = load i32, i32* %15, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = load i32, i32* @IB_LNH_IBA_GLOBAL, align 4
  br label %65

63:                                               ; preds = %55
  %64 = load i32, i32* @IB_LNH_IBA_LOCAL, align 4
  br label %65

65:                                               ; preds = %63, %61
  %66 = phi i32 [ %62, %61 ], [ %64, %63 ]
  %67 = load %struct.ib_ud_header*, %struct.ib_ud_header** %19, align 8
  %68 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %67, i32 0, i32 12
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  store i32 %66, i32* %69, align 8
  %70 = load i32, i32* @IB_LRH_BYTES, align 4
  %71 = load i32, i32* @IB_BTH_BYTES, align 4
  %72 = add nsw i32 %70, %71
  %73 = load i32, i32* @IB_DETH_BYTES, align 4
  %74 = add nsw i32 %72, %73
  %75 = load i32, i32* %15, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %65
  %78 = load i32, i32* @IB_GRH_BYTES, align 4
  br label %80

79:                                               ; preds = %65
  br label %80

80:                                               ; preds = %79, %77
  %81 = phi i32 [ %78, %77 ], [ 0, %79 ]
  %82 = add nsw i32 %74, %81
  %83 = load i32, i32* %11, align 4
  %84 = add nsw i32 %82, %83
  %85 = add nsw i32 %84, 4
  %86 = add nsw i32 %85, 3
  %87 = sdiv i32 %86, 4
  store i32 %87, i32* %21, align 4
  %88 = load i32, i32* %21, align 4
  %89 = call i8* @cpu_to_be16(i32 %88)
  %90 = load %struct.ib_ud_header*, %struct.ib_ud_header** %19, align 8
  %91 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %90, i32 0, i32 12
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  store i8* %89, i8** %92, align 8
  br label %93

93:                                               ; preds = %80, %52
  %94 = load i32, i32* %14, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %93
  %97 = load i32, i32* @ETH_P_8021Q, align 4
  %98 = call i8* @cpu_to_be16(i32 %97)
  %99 = load %struct.ib_ud_header*, %struct.ib_ud_header** %19, align 8
  %100 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %99, i32 0, i32 11
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  store i8* %98, i8** %101, align 8
  br label %102

102:                                              ; preds = %96, %93
  %103 = load i32, i32* %16, align 4
  %104 = icmp eq i32 %103, 6
  br i1 %104, label %108, label %105

105:                                              ; preds = %102
  %106 = load i32, i32* %15, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %140

108:                                              ; preds = %105, %102
  %109 = load %struct.ib_ud_header*, %struct.ib_ud_header** %19, align 8
  %110 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %109, i32 0, i32 10
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  store i32 6, i32* %111, align 8
  %112 = load i64, i64* %20, align 8
  %113 = load i32, i32* @IB_BTH_BYTES, align 4
  %114 = sext i32 %113 to i64
  %115 = add i64 %112, %114
  %116 = load i32, i32* @IB_DETH_BYTES, align 4
  %117 = sext i32 %116 to i64
  %118 = add i64 %115, %117
  %119 = load i32, i32* %11, align 4
  %120 = sext i32 %119 to i64
  %121 = add i64 %118, %120
  %122 = add i64 %121, 4
  %123 = add i64 %122, 3
  %124 = and i64 %123, -4
  %125 = trunc i64 %124 to i32
  %126 = call i8* @cpu_to_be16(i32 %125)
  %127 = load %struct.ib_ud_header*, %struct.ib_ud_header** %19, align 8
  %128 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %127, i32 0, i32 10
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 2
  store i8* %126, i8** %129, align 8
  %130 = load i32, i32* %17, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %108
  %133 = load i32, i32* @IPPROTO_UDP, align 4
  br label %135

134:                                              ; preds = %108
  br label %135

135:                                              ; preds = %134, %132
  %136 = phi i32 [ %133, %132 ], [ 27, %134 ]
  %137 = load %struct.ib_ud_header*, %struct.ib_ud_header** %19, align 8
  %138 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %137, i32 0, i32 10
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 1
  store i32 %136, i32* %139, align 4
  br label %140

140:                                              ; preds = %135, %105
  %141 = load i32, i32* %16, align 4
  %142 = icmp eq i32 %141, 4
  br i1 %142, label %143, label %172

143:                                              ; preds = %140
  %144 = load %struct.ib_ud_header*, %struct.ib_ud_header** %19, align 8
  %145 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %144, i32 0, i32 9
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 0
  store i32 4, i32* %146, align 8
  %147 = load %struct.ib_ud_header*, %struct.ib_ud_header** %19, align 8
  %148 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %147, i32 0, i32 9
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 1
  store i32 5, i32* %149, align 4
  %150 = load i64, i64* @IB_IP4_BYTES, align 8
  %151 = load i64, i64* %20, align 8
  %152 = add i64 %150, %151
  %153 = load i32, i32* @IB_BTH_BYTES, align 4
  %154 = sext i32 %153 to i64
  %155 = add i64 %152, %154
  %156 = load i32, i32* @IB_DETH_BYTES, align 4
  %157 = sext i32 %156 to i64
  %158 = add i64 %155, %157
  %159 = load i32, i32* %11, align 4
  %160 = sext i32 %159 to i64
  %161 = add i64 %158, %160
  %162 = add i64 %161, 4
  %163 = trunc i64 %162 to i32
  %164 = call i8* @cpu_to_be16(i32 %163)
  %165 = load %struct.ib_ud_header*, %struct.ib_ud_header** %19, align 8
  %166 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %165, i32 0, i32 9
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 3
  store i8* %164, i8** %167, align 8
  %168 = load i32, i32* @IPPROTO_UDP, align 4
  %169 = load %struct.ib_ud_header*, %struct.ib_ud_header** %19, align 8
  %170 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %169, i32 0, i32 9
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 2
  store i32 %168, i32* %171, align 8
  br label %172

172:                                              ; preds = %143, %140
  %173 = load i32, i32* %17, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %191

175:                                              ; preds = %172
  %176 = load i32, i32* %16, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %191

178:                                              ; preds = %175
  %179 = load i32, i32* @IB_UDP_BYTES, align 4
  %180 = load i32, i32* @IB_BTH_BYTES, align 4
  %181 = add nsw i32 %179, %180
  %182 = load i32, i32* @IB_DETH_BYTES, align 4
  %183 = add nsw i32 %181, %182
  %184 = load i32, i32* %11, align 4
  %185 = add nsw i32 %183, %184
  %186 = add nsw i32 %185, 4
  %187 = call i8* @cpu_to_be16(i32 %186)
  %188 = load %struct.ib_ud_header*, %struct.ib_ud_header** %19, align 8
  %189 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %188, i32 0, i32 8
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %189, i32 0, i32 0
  store i8* %187, i8** %190, align 8
  br label %191

191:                                              ; preds = %178, %175, %172
  %192 = load i32, i32* %18, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %199

194:                                              ; preds = %191
  %195 = load i32, i32* @IB_OPCODE_UD_SEND_ONLY_WITH_IMMEDIATE, align 4
  %196 = load %struct.ib_ud_header*, %struct.ib_ud_header** %19, align 8
  %197 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %196, i32 0, i32 7
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %197, i32 0, i32 2
  store i32 %195, i32* %198, align 8
  br label %204

199:                                              ; preds = %191
  %200 = load i32, i32* @IB_OPCODE_UD_SEND_ONLY, align 4
  %201 = load %struct.ib_ud_header*, %struct.ib_ud_header** %19, align 8
  %202 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %201, i32 0, i32 7
  %203 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %202, i32 0, i32 2
  store i32 %200, i32* %203, align 8
  br label %204

204:                                              ; preds = %199, %194
  %205 = load i32, i32* %11, align 4
  %206 = sub nsw i32 4, %205
  %207 = and i32 %206, 3
  %208 = load %struct.ib_ud_header*, %struct.ib_ud_header** %19, align 8
  %209 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %208, i32 0, i32 7
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 0
  store i32 %207, i32* %210, align 8
  %211 = load %struct.ib_ud_header*, %struct.ib_ud_header** %19, align 8
  %212 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %211, i32 0, i32 7
  %213 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %212, i32 0, i32 1
  store i64 0, i64* %213, align 8
  %214 = load i32, i32* %12, align 4
  %215 = load %struct.ib_ud_header*, %struct.ib_ud_header** %19, align 8
  %216 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %215, i32 0, i32 0
  store i32 %214, i32* %216, align 8
  %217 = load i32, i32* %13, align 4
  %218 = load %struct.ib_ud_header*, %struct.ib_ud_header** %19, align 8
  %219 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %218, i32 0, i32 1
  store i32 %217, i32* %219, align 4
  %220 = load i32, i32* %14, align 4
  %221 = load %struct.ib_ud_header*, %struct.ib_ud_header** %19, align 8
  %222 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %221, i32 0, i32 2
  store i32 %220, i32* %222, align 8
  %223 = load i32, i32* %15, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %228, label %225

225:                                              ; preds = %204
  %226 = load i32, i32* %16, align 4
  %227 = icmp eq i32 %226, 6
  br label %228

228:                                              ; preds = %225, %204
  %229 = phi i1 [ true, %204 ], [ %227, %225 ]
  %230 = zext i1 %229 to i32
  %231 = load %struct.ib_ud_header*, %struct.ib_ud_header** %19, align 8
  %232 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %231, i32 0, i32 3
  store i32 %230, i32* %232, align 4
  %233 = load i32, i32* %16, align 4
  %234 = icmp eq i32 %233, 4
  %235 = zext i1 %234 to i32
  %236 = load %struct.ib_ud_header*, %struct.ib_ud_header** %19, align 8
  %237 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %236, i32 0, i32 4
  store i32 %235, i32* %237, align 8
  %238 = load i32, i32* %17, align 4
  %239 = load %struct.ib_ud_header*, %struct.ib_ud_header** %19, align 8
  %240 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %239, i32 0, i32 5
  store i32 %238, i32* %240, align 4
  %241 = load i32, i32* %18, align 4
  %242 = load %struct.ib_ud_header*, %struct.ib_ud_header** %19, align 8
  %243 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %242, i32 0, i32 6
  store i32 %241, i32* %243, align 8
  store i32 0, i32* %10, align 4
  br label %244

244:                                              ; preds = %228, %49
  %245 = load i32, i32* %10, align 4
  ret i32 %245
}

declare dso_local i32 @memset(%struct.ib_ud_header*, i32, i32) #1

declare dso_local i8* @cpu_to_be16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
