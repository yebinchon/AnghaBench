; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_ipsec.c_chcr_xfrm_add_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/chelsio/extr_chcr_ipsec.c_chcr_xfrm_add_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_state = type { %struct.TYPE_8__, %struct.TYPE_7__, i32, i64, %struct.TYPE_6__*, i64, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64, i64, i64, i64, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.ipsec_sa_entry = type { i32, i32 }

@SADB_AALG_NONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"CHCR: Cannot offload authenticated xfrm states\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SADB_X_CALG_NONE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"CHCR: Cannot offload compressed xfrm states\0A\00", align 1
@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [40 x i8] c"CHCR: Only IPv4/6 xfrm state offloaded\0A\00", align 1
@XFRM_MODE_TRANSPORT = common dso_local global i64 0, align 8
@XFRM_MODE_TUNNEL = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [46 x i8] c"CHCR: Only transport and tunnel xfrm offload\0A\00", align 1
@IPPROTO_ESP = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [37 x i8] c"CHCR: Only ESP xfrm state offloaded\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"CHCR: Encapsulated xfrm state not offloaded\0A\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"CHCR: Cannot offload xfrm states without aead\0A\00", align 1
@.str.7 = private unnamed_addr constant [77 x i8] c"CHCR: Cannot offload xfrm states with AEAD ICV length other than 96b & 128b\0A\00", align 1
@.str.8 = private unnamed_addr constant [78 x i8] c"CHCR: Cannot offload xfrm states with AEAD key length other than 128/256 bit\0A\00", align 1
@.str.9 = private unnamed_addr constant [51 x i8] c"CHCR: Cannot offload xfrm states with tfc padding\0A\00", align 1
@.str.10 = private unnamed_addr constant [48 x i8] c"CHCR: Cannot offload xfrm states without geniv\0A\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"seqiv\00", align 1
@.str.12 = private unnamed_addr constant [62 x i8] c"CHCR: Cannot offload xfrm states with geniv other than seqiv\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@XFRM_STATE_ESN = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_state*)* @chcr_xfrm_add_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chcr_xfrm_add_state(%struct.xfrm_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xfrm_state*, align 8
  %4 = alloca %struct.ipsec_sa_entry*, align 8
  %5 = alloca i32, align 4
  store %struct.xfrm_state* %0, %struct.xfrm_state** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %7 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @SADB_AALG_NONE, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = call i32 @pr_debug(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %193

16:                                               ; preds = %1
  %17 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %18 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SADB_X_CALG_NONE, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = call i32 @pr_debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %193

27:                                               ; preds = %16
  %28 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %29 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @AF_INET, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %27
  %35 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %36 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @AF_INET6, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %34
  %42 = call i32 @pr_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %193

45:                                               ; preds = %34, %27
  %46 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %47 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @XFRM_MODE_TRANSPORT, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %63

52:                                               ; preds = %45
  %53 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %54 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @XFRM_MODE_TUNNEL, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %52
  %60 = call i32 @pr_debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %193

63:                                               ; preds = %52, %45
  %64 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %65 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %64, i32 0, i32 6
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @IPPROTO_ESP, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %63
  %71 = call i32 @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %2, align 4
  br label %193

74:                                               ; preds = %63
  %75 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %76 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %75, i32 0, i32 5
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = call i32 @pr_debug(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0))
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %2, align 4
  br label %193

83:                                               ; preds = %74
  %84 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %85 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %84, i32 0, i32 4
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = icmp ne %struct.TYPE_6__* %86, null
  br i1 %87, label %92, label %88

88:                                               ; preds = %83
  %89 = call i32 @pr_debug(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0))
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %2, align 4
  br label %193

92:                                               ; preds = %83
  %93 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %94 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %93, i32 0, i32 4
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 128
  br i1 %98, label %99, label %110

99:                                               ; preds = %92
  %100 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %101 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %100, i32 0, i32 4
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 96
  br i1 %105, label %106, label %110

106:                                              ; preds = %99
  %107 = call i32 @pr_debug(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.7, i64 0, i64 0))
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %2, align 4
  br label %193

110:                                              ; preds = %99, %92
  %111 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %112 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %111, i32 0, i32 4
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = icmp ne i32 %115, 160
  br i1 %116, label %117, label %128

117:                                              ; preds = %110
  %118 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %119 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %118, i32 0, i32 4
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = icmp ne i32 %122, 288
  br i1 %123, label %124, label %128

124:                                              ; preds = %117
  %125 = call i32 @pr_debug(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.8, i64 0, i64 0))
  %126 = load i32, i32* @EINVAL, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %2, align 4
  br label %193

128:                                              ; preds = %117, %110
  %129 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %130 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %129, i32 0, i32 3
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %128
  %134 = call i32 @pr_debug(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.9, i64 0, i64 0))
  %135 = load i32, i32* @EINVAL, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %2, align 4
  br label %193

137:                                              ; preds = %128
  %138 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %139 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %146, label %142

142:                                              ; preds = %137
  %143 = call i32 @pr_debug(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.10, i64 0, i64 0))
  %144 = load i32, i32* @EINVAL, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %2, align 4
  br label %193

146:                                              ; preds = %137
  %147 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %148 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = call i64 @strcmp(i32 %149, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %146
  %153 = call i32 @pr_debug(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.12, i64 0, i64 0))
  %154 = load i32, i32* @EINVAL, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %2, align 4
  br label %193

156:                                              ; preds = %146
  %157 = load i32, i32* @GFP_KERNEL, align 4
  %158 = call %struct.ipsec_sa_entry* @kzalloc(i32 8, i32 %157)
  store %struct.ipsec_sa_entry* %158, %struct.ipsec_sa_entry** %4, align 8
  %159 = load %struct.ipsec_sa_entry*, %struct.ipsec_sa_entry** %4, align 8
  %160 = icmp ne %struct.ipsec_sa_entry* %159, null
  br i1 %160, label %164, label %161

161:                                              ; preds = %156
  %162 = load i32, i32* @ENOMEM, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %5, align 4
  br label %191

164:                                              ; preds = %156
  %165 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %166 = load %struct.ipsec_sa_entry*, %struct.ipsec_sa_entry** %4, align 8
  %167 = call i32 @chcr_ipsec_setauthsize(%struct.xfrm_state* %165, %struct.ipsec_sa_entry* %166)
  %168 = load %struct.ipsec_sa_entry*, %struct.ipsec_sa_entry** %4, align 8
  %169 = getelementptr inbounds %struct.ipsec_sa_entry, %struct.ipsec_sa_entry* %168, i32 0, i32 1
  store i32 %167, i32* %169, align 4
  %170 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %171 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 4
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @XFRM_STATE_ESN, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %164
  %178 = load %struct.ipsec_sa_entry*, %struct.ipsec_sa_entry** %4, align 8
  %179 = getelementptr inbounds %struct.ipsec_sa_entry, %struct.ipsec_sa_entry* %178, i32 0, i32 0
  store i32 1, i32* %179, align 4
  br label %180

180:                                              ; preds = %177, %164
  %181 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %182 = load %struct.ipsec_sa_entry*, %struct.ipsec_sa_entry** %4, align 8
  %183 = call i32 @chcr_ipsec_setkey(%struct.xfrm_state* %181, %struct.ipsec_sa_entry* %182)
  %184 = load %struct.ipsec_sa_entry*, %struct.ipsec_sa_entry** %4, align 8
  %185 = ptrtoint %struct.ipsec_sa_entry* %184 to i64
  %186 = load %struct.xfrm_state*, %struct.xfrm_state** %3, align 8
  %187 = getelementptr inbounds %struct.xfrm_state, %struct.xfrm_state* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 0
  store i64 %185, i64* %188, align 8
  %189 = load i32, i32* @THIS_MODULE, align 4
  %190 = call i32 @try_module_get(i32 %189)
  br label %191

191:                                              ; preds = %180, %161
  %192 = load i32, i32* %5, align 4
  store i32 %192, i32* %2, align 4
  br label %193

193:                                              ; preds = %191, %152, %142, %133, %124, %106, %88, %79, %70, %59, %41, %23, %12
  %194 = load i32, i32* %2, align 4
  ret i32 %194
}

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local %struct.ipsec_sa_entry* @kzalloc(i32, i32) #1

declare dso_local i32 @chcr_ipsec_setauthsize(%struct.xfrm_state*, %struct.ipsec_sa_entry*) #1

declare dso_local i32 @chcr_ipsec_setkey(%struct.xfrm_state*, %struct.ipsec_sa_entry*) #1

declare dso_local i32 @try_module_get(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
